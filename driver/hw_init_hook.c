#include <stdint.h>
#include "common.h"
#include "hardware.h"
#include "board.h"
#include "spi.h"
#include "arch/at91_pio.h"
#include "gpio.h"
#include "string.h"
#include "timer.h"
#include "div.h"
#include "debug.h"
#include "arch/at91_pmc.h"

#ifdef CONFIG_SI_SPLASH
#include "si_splash.h"
#else
#include "splash.h"
#endif

//Common LCD controller commands
#define LCDcmd_PageAdrs		0xb0	//page address 0 to 8
#define LCDcmd_ColAdrsU		0x10	//Col address bits 7:4 Column address is 0 to 131
#define LCDcmd_ColAdrsL		0x00	//Col address bits 3:0 Column address is 0 to 131
#define LCDcmd_Normal			0xa6	//Normal display
#define LCDcmd_Reverse		0xa7	//Reverse display
#define LCDcmd_Reset			0xa2	//Reset display, internal reset
#define LCDcmd_DrvOn			0xe7	//Driver ON

#define LCDcmd_Bias1_9		0xa2	//Select bias 1/9
#define LCDcmd_ADCn				0xa1	//ADC negative direction
#define LCDcmd_ComDrvp		0xc0	//Common Drive positive
#define LCDcmd_StartLine 	0x40	//start line 0 to 63
#define LCDcmd_Fosc31			0xe4	//Internal oscillator to 31.4Khz
#define LCDcmd_DCboost		0xe6	//DC boost clock
#define LCDcmd_FoscDCDC		0x03	//DC to DC setting to fosc/6
#define LCDcmd_EntireNorm	0xa4	//Entire display reg to Normal

#define LCDcmd_ExtPwr			0x28	//Internal power OFF

#define LCDcmd_DisplayON 	0xaf
#define LCDcmd_DisplayOFF 0xae

#define LCD_A0_GPIO AT91C_PIN_PA(0) 		// PA0, LOW for command, HIGH for data

#define LCDcmd_Ninver			0x85	//Enable N-Line voltage inversion
#define LCDcmd_Nline			0x0a	//Number of lines
#define LCDcmd_V0RegRatio	0x25	//Resistor ratio 5.0
#define LCDcmd_PwrCtl			0x2f	//power control
#define LCDcmd_EVMset	  	0x81	//EVM mode set
#define LCDcmd_EVMmid			  45	//mid level default 45
//SPI commands

const unsigned char LCDinitWpkt2[] = {
		LCDcmd_Reverse,
		0xa1, //2 - Select inverse scan (Change to 0xa0 for upside-down display)
		LCDcmd_StartLine, //3 - Start COM scan at address 00
		LCDcmd_DCboost,		//4 - DC boost clock
		LCDcmd_FoscDCDC,	//5 - frequency of DC/DC
		LCDcmd_Ninver,		//6 - enable number of lines set
		11,			//7 new DS changes Nline to 11 for new display only
		LCDcmd_PwrCtl,		//8 - power control
		LCDcmd_EntireNorm,		//9 - normal display
		LCDcmd_DisplayON, //10 - display on
		};


//SPI commands

static unsigned char LCDContrastWpkt[] = {
		LCDcmd_EVMset,		//0 - evm mode set
#define LCDcontrast 1
		LCDcmd_EVMmid,		//1 - evm level
		};

static int SPI_GO(const unsigned char a0, const unsigned char *cmd,
				const unsigned char cmd_len)
{
	int i;

	if (!cmd)
		return -1;

	if (!cmd_len)
		return -1;

	pio_set_value(LCD_A0_GPIO, a0);

	at91_spi_cs_activate();
	/* read spi status to clear events */
	at91_spi_read_sr();
	for (i = 0; i < cmd_len; i++) {
		at91_spi_write_data(*cmd++);
		at91_spi_read_spi();
	}
	at91_spi_cs_deactivate();
	return 0;
}

/*********************************************
 Set contrast on the LCD
 Contast adjustment available on the 472 model
 display.
 **********************************************/
uint8_t disSetContrast(uint8_t cont) {
	LCDContrastWpkt[LCDcontrast] = cont;
	SPI_GO(0, LCDContrastWpkt, sizeof(LCDContrastWpkt)/sizeof(unsigned char));
	return cont;
}

void lcd_reset() {}

/*---------------------------------------------------------
	Initialize 128 x 64 display
------------------------------------------------------------*/
void init_display(uint32_t contrast) {
	lcd_reset();
	SPI_GO(0, LCDinitWpkt2, sizeof(LCDinitWpkt2) / sizeof(unsigned char));
	disSetContrast(contrast); //set display contrast

	int line;
	for (line = 0; line < 8; line++) {
		unsigned char LCDpagepkt[1] = { LCDcmd_PageAdrs + (7-line)};
		unsigned char LCDxypkt[2] = { LCDcmd_ColAdrsU, LCDcmd_ColAdrsL };
		SPI_GO(0, LCDpagepkt, 1);
		SPI_GO(0, LCDxypkt, 2);
		SPI_GO(1, splash_mono+line*128, 128);
	}
}

void at91_spi1_hw_init(void)
{
	/* Configure PINs for SPI1 */
	const struct pio_desc spi1_pins[] = {
		{"MISO",	AT91C_PIN_PA(21),	0, PIO_DEFAULT, PIO_PERIPH_B},
		{"MOSI",	AT91C_PIN_PA(22),	0, PIO_DEFAULT, PIO_PERIPH_B},
		{"SPCK",	AT91C_PIN_PA(23),	0, PIO_DEFAULT, PIO_PERIPH_B},
		{"NPCS",	AT91C_PIN_PA(8),	1, PIO_DEFAULT, PIO_OUTPUT},
		{"A0",		AT91C_PIN_PA(0), 	0, PIO_DEFAULT, PIO_OUTPUT},
		{"LCDRST",AT91C_PIN_PD(17), 	1, PIO_DEFAULT, PIO_OUTPUT},
		{(char *)0,	0, 0, PIO_DEFAULT, PIO_PERIPH_A},
	};

	writel((1 << AT91C_ID_PIOA_B), (PMC_PCER + AT91C_BASE_PMC));
	pio_configure(spi1_pins);

	writel((1 << AT91C_ID_SPI1), (PMC_PCER + AT91C_BASE_PMC));
}

void hw_init_hook(void) {
	at91_spi1_hw_init();

	int ret = at91_spi_init(0, 1000000, SPI_MODE0);
	if (ret) {
		dbg_log(1, "SF: Fail to initialize spi\n\r");
		return;
	}

	at91_spi_enable();
	init_display(40);
	dbg_log(1, "SF: Display initialized\n\r");
}
