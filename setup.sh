sudo apt update && sudo apt upgrade
sudo apt install python3 python3-pip libusb-dev make git avr-libc gcc-avr gcc-arm-none-eabi libusb-1.0-0-dev
sudo bash -c 'printf "SUBSYSTEM==\"usb\", ATTRS{idVendor}==\"2b3e\", ATTRS{idProduct}==\"*\", TAG+=\"uaccess\"\\n" >> /etc/udev/rules.d/50-newae.rules'
sudo bash -c 'printf "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"2b3e\", ATTRS{idProduct}==\"*\", TAG+=\"uaccess\", SYMLINK+=\"cw_serial%n\"\\n" >> /etc/udev/rules.d/50-newae.rules'
sudo bash -c 'printf "SUBSYSTEM==\"tty\", ATTRS{idVendor}==\"03eb\", ATTRS{idProduct}==\"6124\", TAG+=\"uaccess\", SYMLINK += \"cw_bootloader%n\"\\n" >> /etc/udev/rules.d/50-newae.rules'
sudo udevadm control --reload-rules
sudo usermod -a -G dialout $USER
