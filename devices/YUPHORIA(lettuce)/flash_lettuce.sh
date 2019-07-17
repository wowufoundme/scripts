echo ----------------------[ Installing adb and fastboot ]---------------------------
sudo apt-get install adb fastboot -y
echo ----------------------[ Make sure you have placed all the files ]---------------------------
echo ----------------------[ Press ENTER key to start flashing ]---------------------------
read -p "" HOME
echo ----------------------[ Flashing kernel ]---------------------------
fastboot -i 0x2A96 flash boot boot.img
echo ---------------[ Flashing modem and bootloader ]--------------------
fastboot -i 0x2A96 flash aboot emmc_appsboot.mbn
fastboot -i 0x2A96 flash modem NON-HLOS.bin
fastboot -i 0x2A96 flash rpm rpm.mbn
fastboot -i 0x2A96 flash sbl1 sbl1.mbn
fastboot -i 0x2A96 flash tz tz.mbn
fastboot -i 0x2A96 flash hyp hyp.mbn
fastboot -i 0x2A96 flash splash splash.img
echo -------------------[ Flashing cache partition ]---------------------
fastboot -i 0x2A96 flash cache cache.img
echo -------------------[ Flashing data partition ]----------------------
fastboot -i 0x2A96 flash userdata userdata.img
echo -------------------[ Flashing system partition ]--------------------
fastboot -i 0x2A96 flash system system.img
echo ----------------------[ Flashing recovery ]-------------------------
fastboot -i 0x2A96 flash recovery recovery.img
echo ---------------------[ Relocking bootloader ]-----------------------
fastboot -i 0x2A96 oem lock
echo ---------------------[ Rebooting device ]---------------------------
fastboot -i 0x2A96 reboot
