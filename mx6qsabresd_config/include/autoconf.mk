CONFIG_SYS_PL310_BASE="L2_PL310_BASE"
CONFIG_VIDEO_BMP_LOGO=y
CONFIG_BOOTM_NETBSD=y
CONFIG_BOOTCOMMAND="run findfdt;mmc dev ${mmcdev};if mmc rescan; then if run loadbootscript; then run bootscript; else if run loadimage; then run mmcboot; else run netboot; fi; fi; else run netboot; fi"
CONFIG_BOARD_EARLY_INIT_F=y
CONFIG_VGA_AS_SINGLE_DEVICE=y
CONFIG_MXC_USB_FLAGS=0
CONFIG_IMX_CONFIG="board/freescale/mx6sabresd/mx6q_4x_mt41j128.cfg"
CONFIG_BOOTM_VXWORKS=y
CONFIG_MX6Q=y
CONFIG_ARM_ERRATA_751472=y
CONFIG_SF_DEFAULT_MODE="SPI_MODE_0"
CONFIG_SYS_LONGHELP=y
CONFIG_IS_MODULE(option)="config_enabled(CONFIG_VAL(option ##_MODULE))"
CONFIG_DFU_SF=y
CONFIG_SYS_LOAD_ADDR=$(CONFIG_LOADADDR)
CONFIG_DISPLAY_BOARDINFO=y
CONFIG_SYS_MEMTEST_SCRATCH=0x10800000
CONFIG_STACKSIZE="(128 * 1024)"
CONFIG_BOOTDELAY=3
CONFIG_SYS_HELP_CMD_WIDTH=8
CONFIG_NR_DRAM_BANKS=y
CONFIG_IMX_VIDEO_SKIP=y
CONFIG_FS_FAT=y
CONFIG_BOOTM_RTEMS=y
CONFIG_SYS_CBSIZE=512
CONFIG_POWER_PFUZE100_I2C_ADDR=0x08
CONFIG_EHCI_HCD_INIT_AFTER_RESET=y
CONFIG_BOOTM_LINUX=y
CONFIG_BOARD_LATE_INIT=y
CONFIG_MII=y
CONFIG_SYS_CACHELINE_SIZE=32
CONFIG_MMC=y
CONFIG_REVISION_TAG=y
CONFIG_SYS_FSL_CLK=y
CONFIG_SYS_FSL_SEC_ADDR="CAAM_BASE_ADDR"
CONFIG_PCIE_IMX_PERST_GPIO="IMX_GPIO_NR(7, 12)"
CONFIG_ENV_OFFSET="(768 * 1024)"
CONFIG_MXC_OCOTP=y
CONFIG_ENV_OVERWRITE=y
CONFIG_ENV_SIZE="(8 * 1024)"
CONFIG_INITRD_TAG=y
CONFIG_SUPPORT_RAW_INITRD=y
CONFIG_SYS_L2_PL310=y
CONFIG_SYS_MALLOC_LEN="(10 * SZ_1M)"
CONFIG_SYS_MMC_ENV_DEV=y
CONFIG_SYS_I2C_SPEED=100000
CONFIG_SYS_BOOTM_LEN=0x1000000
CONFIG_SYS_TEXT_BASE=0x17800000
CONFIG_USB_FUNCTION_MASS_STORAGE=y
CONFIG_MXC_GPT_HCLK=y
CONFIG_MXC_UART=y
CONFIG_SPLASH_SCREEN=y
CONFIG_SYS_BARGSIZE=$(CONFIG_SYS_CBSIZE)
CONFIG_BOOTM_PLAN9=y
CONFIG_IS_BUILTIN(option)="config_enabled(CONFIG_VAL(option))"
CONFIG_VIDEO_BMP_RLE8=y
CONFIG_MXC_USB_PORTSC="(PORT_PTS_UTMI | PORT_PTS_PTW)"
CONFIG_ANDROID_BOOT_IMAGE=y
CONFIG_SYS_FSL_JR0_ADDR="(CAAM_BASE_ADDR + 0x1000)"
CONFIG_POWER_I2C=y
CONFIG_SF_DEFAULT_BUS=0
CONFIG_IPUV3_CLK=264000000
CONFIG_SYS_MAXARGS=32
CONFIG_BMP_16BPP=y
CONFIG_SYS_PBSIZE="(CONFIG_SYS_CBSIZE + 128)"
CONFIG_FEC_XCV_TYPE="RGMII"
CONFIG_MXC_GPIO=y
CONFIG_ARM_ERRATA_743622=y
CONFIG_BOARDDIR="board/freescale/mx6sabresd"
CONFIG_POWER=y
CONFIG_BOUNCE_BUFFER=y
CONFIG_SYS_MAX_FLASH_SECT=512
CONFIG_PHYLIB=y
CONFIG_BOARD_POSTCLK_INIT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_SYS_CONSOLE_IS_IN_ENV=y
CONFIG_USB_EHCI=y
CONFIG_SYS_MMC_MAX_BLK_COUNT=65535
CONFIG_ZLIB=y
CONFIG_LOADADDR=0x12000000
CONFIG_ETHPRIME="FEC"
CONFIG_AUTO_COMPLETE=y
CONFIG_MP=y
CONFIG_FSL_USDHC=y
CONFIG_ENV_IS_IN_MMC=y
CONFIG_DOS_PARTITION=y
CONFIG_GZIP=y
CONFIG_USB_FUNCTION_DFU=y
CONFIG_SYS_FSL_ESDHC_ADDR=0
CONFIG_SYS_INIT_RAM_SIZE="IRAM_SIZE"
CONFIG_VIDEO_IPUV3=y
CONFIG_FEC_MXC_PHYADDR=y
CONFIG_SYS_BAUDRATE_TABLE="{ 9600, 19200, 38400, 57600, 115200 }"
CONFIG_VAL(option)="config_val(option)"
CONFIG_PCI_SCAN_SHOW=y
CONFIG_FASTBOOT_BUF_SIZE=0x07000000
CONFIG_SUPPORT_EMMC_BOOT=y
CONFIG_VIDEO=y
CONFIG_SYS_SDRAM_BASE="PHYS_SDRAM"
CONFIG_IMAGE_FORMAT_LEGACY=y
CONFIG_SYS_BOOT_RAMDISK_HIGH=y
CONFIG_PHY_ATHEROS=y
CONFIG_FASTBOOT_BUF_ADDR=$(CONFIG_SYS_LOAD_ADDR)
CONFIG_CFB_CONSOLE=y
CONFIG_SYS_FSL_USDHC_NUM=3
CONFIG_USB_ETHER_ASIX=y
CONFIG_GENERIC_MMC=y
CONFIG_SYS_INIT_SP_OFFSET="(CONFIG_SYS_INIT_RAM_SIZE - GENERATED_GBL_DATA_SIZE)"
CONFIG_SYS_CONSOLE_OVERWRITE_ROUTINE=y
CONFIG_MXC_SPI=y
CONFIG_SYS_I2C=y
CONFIG_SYS_INIT_RAM_ADDR="IRAM_BASE_ADDR"
CONFIG_PCIE_IMX_POWER_GPIO="IMX_GPIO_NR(3, 19)"
CONFIG_EXTRA_ENV_SETTINGS="script=boot.scr0image=zImage0fdt_file=undefined0fdt_addr=0x180000000boot_fdt=try0ip_dyn=yes0console=" CONFIG_CONSOLE_DEV "0dfuspi=dfu 0 sf 0:0:10000000:00dfu_alt_info_spl=spl raw 0x4000dfu_alt_info_img=u-boot raw 0x100000dfu_alt_info=spl raw 0x4000fdt_high=0xffffffff0initrd_high=0xffffffff0mmcdev=" __stringify(CONFIG_SYS_MMC_ENV_DEV) "0mmcpart=10mmcroot=" CONFIG_MMCROOT " rootwait rw0update_sd_firmware=if test ${ip_dyn} = yes; then setenv get_cmd dhcp; else setenv get_cmd tftp; fi; if mmc dev ${mmcdev}; then if ${get_cmd} ${update_sd_firmware_filename}; then setexpr fw_sz ${filesize} / 0x200; setexpr fw_sz ${fw_sz} + 1; mmc write ${loadaddr} 0x2 ${fw_sz}; fi; fi0" EMMC_ENV "video_args_hdmi=setenv video_args $video_args video=mxcfb${fb}:dev=hdmi,1280x720M@60,if=RGB240video_args_lvds=setenv video_args $video_args video=mxcfb${fb}:dev=ldb,LDB-XGA,if=RGB6660video_args_lcd=setenv video_args $video_args video=mxcfb${fb}:dev=lcd,CLAA-WVGA,if=RGB6660fb=00video_interfaces=hdmi lvds lcd0video_args_script=for v in ${video_interfaces}; do run video_args_${v}; setexpr fb $fb + 1; done0mmcargs=setenv bootargs console=${console},${baudrate} root=${mmcroot} " VIDEO_ARGS "0loadbootscript=fatload mmc ${mmcdev}:${mmcpart} ${loadaddr} ${script};0bootscript=echo Running bootscript from mmc ...; source0loadimage=fatload mmc ${mmcdev}:${mmcpart} ${loadaddr} ${image}0loadfdt=fatload mmc ${mmcdev}:${mmcpart} ${fdt_addr} ${fdt_file}0mmcboot=echo Booting from mmc ...; " VIDEO_ARGS_SCRIPT "run mmcargs; if test ${boot_fdt} = yes || test ${boot_fdt} = try; then if run loadfdt; then bootz ${loadaddr} - ${fdt_addr}; else if test ${boot_fdt} = try; then bootz; else echo WARN: Cannot load the DT; fi; fi; else bootz; fi;0netargs=setenv bootargs console=${console},${baudrate} root=/dev/nfs ip=dhcp nfsroot=${serverip}:${nfsroot},v3,tcp0netboot=echo Booting from net ...; run netargs; if test ${ip_dyn} = yes; then setenv get_cmd dhcp; else setenv get_cmd tftp; fi; ${get_cmd} ${image}; if test ${boot_fdt} = yes || test ${boot_fdt} = try; then if ${get_cmd} ${fdt_addr} ${fdt_file}; then bootz ${loadaddr} - ${fdt_addr}; else if test ${boot_fdt} = try; then bootz; else echo WARN: Cannot load the DT; fi; fi; else bootz; fi;0findfdt=if test $fdt_file = undefined; then if test $board_name = SABREAUTO && test $board_rev = MX6QP; then setenv fdt_file imx6qp-sabreauto.dtb; fi; if test $board_name = SABREAUTO && test $board_rev = MX6Q; then setenv fdt_file imx6q-sabreauto.dtb; fi; if test $board_name = SABREAUTO && test $board_rev = MX6DL; then setenv fdt_file imx6dl-sabreauto.dtb; fi; if test $board_name = SABRESD && test $board_rev = MX6QP; then setenv fdt_file imx6qp-sabresd.dtb; fi; if test $board_name = SABRESD && test $board_rev = MX6Q; then setenv fdt_file imx6q-sabresd-ldo.dtb; fi; if test $board_name = SABRESD && test $board_rev = MX6DL; then setenv fdt_file imx6dl-sabresd-ldo.dtb; fi; if test $fdt_file = undefined; then echo WARNING: Could not determine dtb to use; fi; fi;0"
CONFIG_CMD_FASTBOOT=y
CONFIG_SYS_INIT_SP_ADDR="(CONFIG_SYS_INIT_RAM_ADDR + CONFIG_SYS_INIT_SP_OFFSET)"
CONFIG_FSL_ESDHC=y
CONFIG_ARM_ERRATA_761320=y
CONFIG_PCIE_IMX=y
CONFIG_IMX_THERMAL=y
CONFIG_BAUDRATE=115200
CONFIG_POWER_PFUZE100=y
CONFIG_CMD_BMODE=y
CONFIG_CMDLINE_TAG=y
CONFIG_MXC_UART_BASE="UART1_BASE"
CONFIG_SPLASH_SCREEN_ALIGN=y
CONFIG_ARM_ERRATA_794072=y
CONFIG_CMD_PCI=y
CONFIG_DFU_MMC=y
CONFIG_USB_HOST_ETHER=y
CONFIG_PARTITIONS=y
CONFIG_FEC_MXC=y
CONFIG_USBD_HS=y
CONFIG_USB_MAX_CONTROLLER_COUNT=y
CONFIG_SYS_NO_FLASH=y
CONFIG_SYS_DEF_EEPROM_ADDR=0
CONFIG_ARP_TIMEOUT="200UL"
CONFIG_FS_EXT4=y
CONFIG_MACH_TYPE=3980
CONFIG_SYS_MEMTEST_END=0x10010000
CONFIG_PCI_PNP=y
CONFIG_USB_STORAGE=y
CONFIG_USB_EHCI_MX6=y
CONFIG_IMX_HDMI=y
CONFIG_DISPLAY_CPUINFO=y
CONFIG_MMCROOT="/dev/mmcblk2p2"
CONFIG_SETUP_MEMORY_TAGS=y
CONFIG_EXT4_WRITE=y
CONFIG_SYS_MEMTEST_START=0x10000000
CONFIG_SF_DEFAULT_SPEED=20000000
CONFIG_CONS_INDEX=y
CONFIG_LMB=y
CONFIG_SYS_I2C_MXC=y
CONFIG_IS_ENABLED(option)="(config_enabled(CONFIG_VAL(option)) || config_enabled(CONFIG_VAL(option ##_MODULE)))"
CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG=y
CONFIG_SYS_I2C_MXC_I2C1=y
CONFIG_SYS_I2C_MXC_I2C2=y
CONFIG_SYS_I2C_MXC_I2C3=y
CONFIG_PCI=y
CONFIG_USB_FUNCTION_FASTBOOT=y
CONFIG_VIDEO_LOGO=y
CONFIG_CMD_FUSE=y
CONFIG_SF_DEFAULT_CS=0
CONFIG_CONSOLE_DEV="ttymxc0"
