@echo off

call clean.bat
set STACK_CHECK_DISABLE=1

%1 :%2

:9260_dataflash_eboot
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x4000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9260_dataflash_cekernel
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9260_dataflash_uboot
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9260_dataflash_linuxkernel
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x44B
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9260_dataflash_gettingstarted
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9260_dataflash_massstorage
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9260_nandflash_eboot
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9260_nandflash_cekernel
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20067000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9260_nandflash_uboot
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9260_nandflash_linuxkernel
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x44B
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9260_nandflash_gettingstarted
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9260_nandflash_massstorage
set CONFIG_AT91SAM9260EK=Y
set AT91SAM9260=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9261_dataflash_eboot
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9261_dataflash_cekernel
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x32000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9261_dataflash_uboot
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9261_dataflash_linuxkernel
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x350
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9261_dataflash_gettingstarted
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9261_dataflash_massstorage
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9261_nandflash_eboot
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9261_nandflash_cekernel
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20069000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9261_nandflash_uboot
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9261_nandflash_linuxkernel
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x350
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9261_nandflash_gettingstarted
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9261_nandflash_massstorage
set CONFIG_AT91SAM9261EK=Y
set AT91SAM9261=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_250MHZ=Y
goto :build

:9263_dataflash_eboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9263_dataflash_cekernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x30000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9263_dataflash_uboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9263_dataflash_linuxkernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x4B2
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_dataflash_gettingstarted
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_dataflash_massstorage
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_nandflash_eboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9263_nandflash_cekernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x2006c000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9263_nandflash_uboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9263_nandflash_linuxkernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x4B2
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_nandflash_gettingstarted
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_nandflash_massstorage
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_sdcard_eboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9263_sdcard_cekernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x2006c000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9263_sdcard_uboot
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x23F00000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9263_sdcard_linuxkernel
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x22000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x4B2
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_sdcard_gettingstarted
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9263_sdcard_massstorage
set CONFIG_AT91SAM9263EK=Y
set AT91SAM9263=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_240MHZ=Y
set CONFIG_CRYSTAL_18_432MHZ=Y
goto :build

:9rl_dataflash_eboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9rl_dataflash_cekernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x32000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9rl_dataflash_uboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9rl_dataflash_linuxkernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=1326
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_dataflash_gettingstarted
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_dataflash_massstorage
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_nandflash_eboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9rl_nandflash_cekernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x2006c000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9rl_nandflash_uboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9rl_nandflash_linuxkernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=1326
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_nandflash_gettingstarted
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_nandflash_massstorage
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_sdcard_eboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9rl_sdcard_cekernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x2006c000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9rl_sdcard_uboot
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x23F00000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9rl_sdcard_linuxkernel
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x22000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=1326
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_sdcard_gettingstarted
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9rl_sdcard_massstorage
set CONFIG_AT91SAM9RLEK=Y
set AT91SAM9RL=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_dataflash_eboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g10_dataflash_cekernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x32000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g10_dataflash_uboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g10_dataflash_linuxkernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x86F
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_dataflash_gettingstarted
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_dataflash_massstorage
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_nandflash_eboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g10_nandflash_cekernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20069000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g10_nandflash_uboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x200000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g10_nandflash_linuxkernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x86F
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_nandflash_gettingstarted
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_nandflash_massstorage
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_sdcard_eboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g10_sdcard_cekernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20069000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g10_sdcard_uboot
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x23F00000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g10_sdcard_linuxkernel
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x22000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x86F
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_sdcard_gettingstarted
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g10_sdcard_massstorage
set CONFIG_AT91SAM9G10EK=Y
set AT91SAM9G10=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_dataflash_eboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g20_dataflash_cekernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x20000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g20_dataflash_uboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g20_dataflash_linuxkernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x658
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_dataflash_gettingstarted
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_dataflash_massstorage
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_nandflash_eboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g20_nandflash_cekernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20067000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g20_nandflash_uboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x23F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g20_nandflash_linuxkernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x22000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x658
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_nandflash_gettingstarted
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_nandflash_massstorage
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x20000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_sdcard_eboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g20_sdcard_cekernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20067000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_NK=Y
goto :build

:9g20_sdcard_uboot
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x23F00000
set CONFIG_CPU_CLK_266MHZ=Y
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g20_sdcard_linuxkernel
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x22000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x20000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=0x658
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_sdcard_gettingstarted
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g20_sdcard_massstorage
set CONFIG_AT91SAM9G20EK=Y
set AT91SAM9G20=Y
set CONFIG_SDCARD=Y
set JUMP_ADDR=0x20000000
set CONFIG_CPU_CLK_266MHZ=Y
goto :build

:9g45_dataflash_eboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g45_dataflash_cekernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_LOAD_NK=Y
goto :build

:9g45_dataflash_uboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x73F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g45_dataflash_linuxkernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x72000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9g45_dataflash_gettingstarted
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
goto :build

:9g45_dataflash_massstorage
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
goto :build

:9g45_nandflash_eboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g45_nandflash_cekernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x7006C000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_LOAD_NK=Y
goto :build

:9g45_nandflash_uboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x73F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g45_nandflash_linuxkernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x72000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9g45_nandflash_gettingstarted
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
goto :build

:9g45_nandflash_massstorage
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
goto :build

:9g45_sdcard_eboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9g45_sdcard_cekernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x7006C000
set CONFIG_LOAD_NK=Y
goto :build

:9g45_sdcard_uboot
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x73F00000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9g45_sdcard_linuxkernel
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x72000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9g45_sdcard_gettingstarted
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
goto :build

:9g45_sdcard_massstorage
set CONFIG_AT91SAM9G45EK=Y
set AT91SAM9G45=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
goto :build

:9m10_dataflash_eboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9m10_dataflash_cekernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x5000
set IMG_SIZE=0x40000
set CONFIG_LOAD_NK=Y
goto :build

:9m10_dataflash_uboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x73F00000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9m10_dataflash_linuxkernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x72000000
set IMG_ADDRESS=0x42000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9m10_dataflash_gettingstarted
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
goto :build

:9m10_dataflash_massstorage
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_DATAFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x8400
set IMG_SIZE=0x40000
goto :build

:9m10_nandflash_eboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x80000
set IMG_SIZE=0x40000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9m10_nandflash_cekernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x7006C000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x2000000
set CONFIG_LOAD_NK=Y
goto :build

:9m10_nandflash_uboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x73F00000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9m10_nandflash_linuxkernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x72000000
set IMG_ADDRESS=0x200000
set IMG_SIZE=0x200000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9m10_nandflash_gettingstarted
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
goto :build

:9m10_nandflash_massstorage
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_NANDFLASH=Y
set JUMP_ADDR=0x70000000
set IMG_ADDRESS=0x20000
set IMG_SIZE=0x40000
goto :build

:9m10_sdcard_eboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
set CONFIG_LOAD_EBOOT=Y
goto :build

:9m10_sdcard_cekernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x7006C000
set CONFIG_LOAD_NK=Y
goto :build

:9m10_sdcard_uboot
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x73F00000
set CONFIG_LOAD_UBOOT=Y
goto :build

:9m10_sdcard_linuxkernel
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x72000000
set CONFIG_LOAD_LINUX=Y
set OS_MEM_BANK=0x70000000
set OS_MEM_SIZE=0x4000000
set MACH_TYPE=2212
goto :build

:9m10_sdcard_gettingstarted
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
goto :build

:9m10_sdcard_massstorage
set CONFIG_AT91SAM9M10EK=Y
set AT91SAM9M10=Y
set CONFIG_SDCARD=Y
set CONFIG_SDCARD_HS=Y
set CONFIG_DMA=Y
set JUMP_ADDR=0x70000000
goto :build

:build
cd ..\..
build -c
cd wince\buildscripts

:EOF