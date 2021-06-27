/* MAIN.C file
 * 
 */
#include "stm8l101f3.h"
#define I2C_ADDR 0x67

void send_i2c(unsigned char addr, unsigned char* buf, unsigned char count);
void set_leds(unsigned char *states);

unsigned char i2c_buf[10];
unsigned char leds[16];

void delay(unsigned char t);
void set_vals(unsigned char start, unsigned char stop, unsigned char v);

void clear(void);
void spiral(void);
void group_spiral_4(void);
void diagonal_blink(void);


main()
{
	unsigned char i;
	// init clk
	sfr_CLK.CKDIVR.byte = 0; // FULL SPEED 
	sfr_CLK.PCKENR.byte = 0b00001000; // give clk to i2c 
	
	// init i2c
	sfr_I2C.FREQR.byte = 16; // mhz
	sfr_I2C.CCRL.byte = 200; // gives i2c clk period of 2*100*1/16mHz (or 80kHz)
	sfr_I2C.CCRH.F_S = 0; // SLOW MODE
	sfr_I2C.TRISER.byte = 17; // max 1000ns rise time in normal mode i2c 
	sfr_I2C.CR1.PE = 1;
	
	clear();
	while (1)
	{
		spiral();
		group_spiral_4();
		diagonal_blink();
	}
}	

void clear() {
	set_vals(0, 16, 0);
	set_leds(leds);
}

void spiral() {
	unsigned char i;
	leds[0] = 1;
	for (i = 0; i < 16; i++) {
		set_leds(leds);
		leds[i] = 0;
		if (i != 15) {
			leds[i+1] = 1;
		}
		delay(10);
	}
	leds[15] = 0;
	set_leds(leds);
}

void group_spiral_4() {
	unsigned char i, j;
	set_vals(0, 4, 1);
	for (i = 0; i < 4; i++) {
		set_leds(leds);
		delay(20);
		
		for (j = 0; j < 4; j++) {
			leds[i * 4 + j] = 0;
			if (i != 3) {
				leds[(i + 1) * 4 + j] = 1;
			}
		}
	}
	set_vals(12, 16, 0);
	set_leds(leds);
}

void diagonal_blink() {
	set_vals(0, 4, 1);
	set_vals(8, 12, 1);
	set_leds(leds);
	delay(30);
	
	set_vals(0, 16, 0);
	set_vals(4, 8, 1);
	set_vals(12, 16, 1);
	set_leds(leds);
	delay(30);
	
	clear();
}

void delay(unsigned char t) {
	volatile unsigned char i, j, k, a;
	for (i = 0; i < t; i++) {
		for (j = 0; j < 254; j++) {
			for (k = 0; k < 254; k++) {
				a++;
			}
		}
	}
}

void send_i2c(unsigned char addr, unsigned char* buf, unsigned char count) {
	unsigned char i = 0;
	volatile char tmp;
	sfr_I2C.CR2.START = 1;
	while (!sfr_I2C.SR1.SB) {}
	sfr_I2C.DR.DR = addr << 1;
	
	while (!sfr_I2C.SR1.ADDR) {}
	tmp = sfr_I2C.SR1.byte;
	tmp = sfr_I2C.SR3.byte;
	
	while (i < count) {
		while (!sfr_I2C.SR1.TXE) {}
		sfr_I2C.DR.byte = buf[i++];
	}
	sfr_I2C.CR2.STOP = 1;
}

void set_leds(unsigned char *states) {
	unsigned char i, j;
	i2c_buf[0] = 0b00010110;
	for (i = 0; i < 4; i++) {
		i2c_buf[i+1] = 0;
		for (j = 0; j < 4; j++) {
			if (!states[4 * i + j]) {
				i2c_buf[i + 1] |= 1 << (j * 2);
			}
		}
	}
	send_i2c(I2C_ADDR, i2c_buf, 6);
}

void set_vals(unsigned char start, unsigned char stop, unsigned char v) {
	unsigned char i;
	for (i = start; i < stop; i++) {
		leds[i] = v;
	}
}