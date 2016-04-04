
all:build burn
	echo Finish
build:
	avr-gcc -g -mmcu=atmega328p -o $(ARQUIVO).elf $(ARQUIVO)
	avr-objcopy -O ihex -R .eeprom $(ARQUIVO).elf $(ARQUIVO).hex

burn:
	sudo avrdude -C /etc/avrdude.conf -p atmega328p -c arduino -P /dev/ttyACM0 -b 115200 -D -U flash:w:$(ARQUIVO).hex:i

clean:
	-rm -f $(ARQUIVO).elf $(ARQUIVO).hex $(ARQUIVO).o
