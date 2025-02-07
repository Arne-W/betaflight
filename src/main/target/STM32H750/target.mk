TARGET_MCU        := STM32H750xx
TARGET_MCU_FAMILY := STM32H7

HSE_VALUE          = 8000000

ifneq ($(EXST),)
EXST = yes
EXST_ADJUST_VMA = 0x97CE0000
endif

ifneq ($(EXST),yes)
TARGET_FLASH_SIZE   := 1024
LD_SCRIPT            = $(LINKER_DIR)/stm32_flash_h750_1m.ld
endif
