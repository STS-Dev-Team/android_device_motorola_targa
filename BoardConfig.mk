# inherit from common
-include device/motorola/common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/targa/BoardConfigVendor.mk


# Processor
TARGET_BOOTLOADER_BOARD_NAME := targa

# Kernel
BOARD_KERNEL_CMDLINE := root=/dev/ram0 rw mem=1024M@0x80000000 console=ttyO2,115200n8 init=/init ip=off mmcparts=mmcblk1:p7(pds),p15(boot),p16(recovery),p17(cdrom),p18(misc),p19(cid),p20(kpanic),p21(system),p22(cache),p23(preinstall),p24(webtop),p25(userdata),p26(emstorage) mot_sst=1 androidboot.bootloader=0x0A72

# Kernel Build
TARGET_KERNEL_SOURCE := kernel/motorola/mapphone
TARGET_KERNEL_CONFIG := mapphone_targa_defconfig

# Recovery
BOARD_HAS_WEBTOP := true
BOARD_NONSAFE_SYSTEM_DEVICE := /dev/block/mmcblk1p21

BOARD_HAS_VIRTUAL_KEYS := true
BOARD_VIRTUAL_KEY_HEIGHT := 64
BOARD_MAX_TOUCH_X := 1024
BOARD_MAX_TOUCH_Y := 1024
