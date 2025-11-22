#!/bin/sh

/usr/bin/lava_io set MAIN_MCU_POWER=1 HEAD_MCU_POWER=1
/home/lava/firmware_MCU/klippy_mcu
/usr/bin/python3 /home/lava/klipper/klippy/klippy.py /home/lava/printer_data/config/printer.cfg -I /home/lava/printer_data/comms/klippy.serial -v -a /home/lava/printer_data/comms/klippy.sock -u lava
