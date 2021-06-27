   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.4 - 04 Feb 2021
   3                     ; Generator (Limited) V4.5.2 - 04 Feb 2021
  46                     ; 22 main()
  46                     ; 23 {
  48                     	switch	.text
  49  0000               _main:
  53                     ; 26 	sfr_CLK.CKDIVR.byte = 0; // FULL SPEED 
  55  0000 725f50c0      	clr	20672
  56                     ; 27 	sfr_CLK.PCKENR.byte = 0b00001000; // give clk to i2c 
  58  0004 350850c3      	mov	20675,#8
  59                     ; 30 	sfr_I2C.FREQR.byte = 16; // mhz
  61  0008 35105212      	mov	21010,#16
  62                     ; 31 	sfr_I2C.CCRL.byte = 200; // gives i2c clk period of 2*100*1/16mHz (or 80kHz)
  64  000c 35c8521b      	mov	21019,#200
  65                     ; 32 	sfr_I2C.CCRH.F_S = 0; // SLOW MODE
  67  0010 721f521c      	bres	21020,#7
  68                     ; 33 	sfr_I2C.TRISER.byte = 17; // max 1000ns rise time in normal mode i2c 
  70  0014 3511521d      	mov	21021,#17
  71                     ; 34 	sfr_I2C.CR1.PE = 1;
  73  0018 72105210      	bset	21008,#0
  74                     ; 36 	clear();
  76  001c ad09          	call	_clear
  78  001e               L12:
  79                     ; 39 		spiral();
  81  001e ad17          	call	_spiral
  83                     ; 40 		group_spiral_4();
  85  0020 ad4d          	call	_group_spiral_4
  87                     ; 41 		diagonal_blink();
  89  0022 cd00cf        	call	_diagonal_blink
  92  0025 20f7          	jra	L12
 118                     ; 45 void clear() {
 119                     	switch	.text
 120  0027               _clear:
 124                     ; 46 	set_vals(0, 16, 0);
 126  0027 4b00          	push	#0
 127  0029 ae0010        	ldw	x,#16
 128  002c cd01e8        	call	_set_vals
 130  002f 84            	pop	a
 131                     ; 47 	set_leds(leds);
 133  0030 ae0000        	ldw	x,#_leds
 134  0033 cd018b        	call	_set_leds
 136                     ; 48 }
 139  0036 81            	ret
 176                     ; 50 void spiral() {
 177                     	switch	.text
 178  0037               _spiral:
 180  0037 88            	push	a
 181       00000001      OFST:	set	1
 184                     ; 52 	leds[0] = 1;
 186  0038 35010000      	mov	_leds,#1
 187                     ; 53 	for (i = 0; i < 16; i++) {
 189  003c 0f01          	clr	(OFST+0,sp)
 191  003e               L35:
 192                     ; 54 		set_leds(leds);
 194  003e ae0000        	ldw	x,#_leds
 195  0041 cd018b        	call	_set_leds
 197                     ; 55 		leds[i] = 0;
 199  0044 7b01          	ld	a,(OFST+0,sp)
 200  0046 5f            	clrw	x
 201  0047 97            	ld	xl,a
 202  0048 6f00          	clr	(_leds,x)
 203                     ; 56 		if (i != 15) {
 205  004a 7b01          	ld	a,(OFST+0,sp)
 206  004c a10f          	cp	a,#15
 207  004e 2708          	jreq	L16
 208                     ; 57 			leds[i+1] = 1;
 210  0050 7b01          	ld	a,(OFST+0,sp)
 211  0052 5f            	clrw	x
 212  0053 97            	ld	xl,a
 213  0054 a601          	ld	a,#1
 214  0056 e701          	ld	(_leds+1,x),a
 215  0058               L16:
 216                     ; 59 		delay(10);
 218  0058 a60a          	ld	a,#10
 219  005a cd0114        	call	_delay
 221                     ; 53 	for (i = 0; i < 16; i++) {
 223  005d 0c01          	inc	(OFST+0,sp)
 227  005f 7b01          	ld	a,(OFST+0,sp)
 228  0061 a110          	cp	a,#16
 229  0063 25d9          	jrult	L35
 230                     ; 61 	leds[15] = 0;
 232  0065 3f0f          	clr	_leds+15
 233                     ; 62 	set_leds(leds);
 235  0067 ae0000        	ldw	x,#_leds
 236  006a cd018b        	call	_set_leds
 238                     ; 63 }
 241  006d 84            	pop	a
 242  006e 81            	ret
 289                     ; 65 void group_spiral_4() {
 290                     	switch	.text
 291  006f               _group_spiral_4:
 293  006f 89            	pushw	x
 294       00000002      OFST:	set	2
 297                     ; 67 	set_vals(0, 4, 1);
 299  0070 4b01          	push	#1
 300  0072 ae0004        	ldw	x,#4
 301  0075 cd01e8        	call	_set_vals
 303  0078 84            	pop	a
 304                     ; 68 	for (i = 0; i < 4; i++) {
 306  0079 0f01          	clr	(OFST-1,sp)
 308  007b               L501:
 309                     ; 69 		set_leds(leds);
 311  007b ae0000        	ldw	x,#_leds
 312  007e cd018b        	call	_set_leds
 314                     ; 70 		delay(20);
 316  0081 a614          	ld	a,#20
 317  0083 cd0114        	call	_delay
 319                     ; 72 		for (j = 0; j < 4; j++) {
 321  0086 0f02          	clr	(OFST+0,sp)
 323  0088               L311:
 324                     ; 73 			leds[i * 4 + j] = 0;
 326  0088 7b01          	ld	a,(OFST-1,sp)
 327  008a 97            	ld	xl,a
 328  008b a604          	ld	a,#4
 329  008d 42            	mul	x,a
 330  008e 01            	rrwa	x,a
 331  008f 1b02          	add	a,(OFST+0,sp)
 332  0091 2401          	jrnc	L41
 333  0093 5c            	incw	x
 334  0094               L41:
 335  0094 02            	rlwa	x,a
 336  0095 6f00          	clr	(_leds,x)
 337                     ; 74 			if (i != 3) {
 339  0097 7b01          	ld	a,(OFST-1,sp)
 340  0099 a103          	cp	a,#3
 341  009b 2711          	jreq	L121
 342                     ; 75 				leds[(i + 1) * 4 + j] = 1;
 344  009d 7b01          	ld	a,(OFST-1,sp)
 345  009f 97            	ld	xl,a
 346  00a0 a604          	ld	a,#4
 347  00a2 42            	mul	x,a
 348  00a3 01            	rrwa	x,a
 349  00a4 1b02          	add	a,(OFST+0,sp)
 350  00a6 2401          	jrnc	L61
 351  00a8 5c            	incw	x
 352  00a9               L61:
 353  00a9 02            	rlwa	x,a
 354  00aa a601          	ld	a,#1
 355  00ac e704          	ld	(_leds+4,x),a
 356  00ae               L121:
 357                     ; 72 		for (j = 0; j < 4; j++) {
 359  00ae 0c02          	inc	(OFST+0,sp)
 363  00b0 7b02          	ld	a,(OFST+0,sp)
 364  00b2 a104          	cp	a,#4
 365  00b4 25d2          	jrult	L311
 366                     ; 68 	for (i = 0; i < 4; i++) {
 368  00b6 0c01          	inc	(OFST-1,sp)
 372  00b8 7b01          	ld	a,(OFST-1,sp)
 373  00ba a104          	cp	a,#4
 374  00bc 25bd          	jrult	L501
 375                     ; 79 	set_vals(12, 16, 0);
 377  00be 4b00          	push	#0
 378  00c0 ae0c10        	ldw	x,#3088
 379  00c3 cd01e8        	call	_set_vals
 381  00c6 84            	pop	a
 382                     ; 80 	set_leds(leds);
 384  00c7 ae0000        	ldw	x,#_leds
 385  00ca cd018b        	call	_set_leds
 387                     ; 81 }
 390  00cd 85            	popw	x
 391  00ce 81            	ret
 419                     ; 83 void diagonal_blink() {
 420                     	switch	.text
 421  00cf               _diagonal_blink:
 425                     ; 84 	set_vals(0, 4, 1);
 427  00cf 4b01          	push	#1
 428  00d1 ae0004        	ldw	x,#4
 429  00d4 cd01e8        	call	_set_vals
 431  00d7 84            	pop	a
 432                     ; 85 	set_vals(8, 12, 1);
 434  00d8 4b01          	push	#1
 435  00da ae080c        	ldw	x,#2060
 436  00dd cd01e8        	call	_set_vals
 438  00e0 84            	pop	a
 439                     ; 86 	set_leds(leds);
 441  00e1 ae0000        	ldw	x,#_leds
 442  00e4 cd018b        	call	_set_leds
 444                     ; 87 	delay(30);
 446  00e7 a61e          	ld	a,#30
 447  00e9 ad29          	call	_delay
 449                     ; 89 	set_vals(0, 16, 0);
 451  00eb 4b00          	push	#0
 452  00ed ae0010        	ldw	x,#16
 453  00f0 cd01e8        	call	_set_vals
 455  00f3 84            	pop	a
 456                     ; 90 	set_vals(4, 8, 1);
 458  00f4 4b01          	push	#1
 459  00f6 ae0408        	ldw	x,#1032
 460  00f9 cd01e8        	call	_set_vals
 462  00fc 84            	pop	a
 463                     ; 91 	set_vals(12, 16, 1);
 465  00fd 4b01          	push	#1
 466  00ff ae0c10        	ldw	x,#3088
 467  0102 cd01e8        	call	_set_vals
 469  0105 84            	pop	a
 470                     ; 92 	set_leds(leds);
 472  0106 ae0000        	ldw	x,#_leds
 473  0109 cd018b        	call	_set_leds
 475                     ; 93 	delay(30);
 477  010c a61e          	ld	a,#30
 478  010e ad04          	call	_delay
 480                     ; 95 	clear();
 482  0110 cd0027        	call	_clear
 484                     ; 96 }
 487  0113 81            	ret
 557                     ; 98 void delay(unsigned char t) {
 558                     	switch	.text
 559  0114               _delay:
 561  0114 88            	push	a
 562  0115 5204          	subw	sp,#4
 563       00000004      OFST:	set	4
 566                     ; 100 	for (i = 0; i < t; i++) {
 568  0117 0f01          	clr	(OFST-3,sp)
 571  0119 201c          	jra	L571
 572  011b               L171:
 573                     ; 101 		for (j = 0; j < 254; j++) {
 575  011b 0f03          	clr	(OFST-1,sp)
 578  011d 2010          	jra	L502
 579  011f               L102:
 580                     ; 102 			for (k = 0; k < 254; k++) {
 582  011f 0f04          	clr	(OFST+0,sp)
 585  0121 2004          	jra	L512
 586  0123               L112:
 587                     ; 103 				a++;
 589  0123 0c02          	inc	(OFST-2,sp)
 591                     ; 102 			for (k = 0; k < 254; k++) {
 593  0125 0c04          	inc	(OFST+0,sp)
 595  0127               L512:
 598  0127 7b04          	ld	a,(OFST+0,sp)
 599  0129 a1fe          	cp	a,#254
 600  012b 25f6          	jrult	L112
 601                     ; 101 		for (j = 0; j < 254; j++) {
 603  012d 0c03          	inc	(OFST-1,sp)
 605  012f               L502:
 608  012f 7b03          	ld	a,(OFST-1,sp)
 609  0131 a1fe          	cp	a,#254
 610  0133 25ea          	jrult	L102
 611                     ; 100 	for (i = 0; i < t; i++) {
 613  0135 0c01          	inc	(OFST-3,sp)
 615  0137               L571:
 618  0137 7b01          	ld	a,(OFST-3,sp)
 619  0139 1105          	cp	a,(OFST+1,sp)
 620  013b 25de          	jrult	L171
 621                     ; 107 }
 624  013d 5b05          	addw	sp,#5
 625  013f 81            	ret
 696                     ; 109 void send_i2c(unsigned char addr, unsigned char* buf, unsigned char count) {
 697                     	switch	.text
 698  0140               _send_i2c:
 700  0140 88            	push	a
 701  0141 89            	pushw	x
 702       00000002      OFST:	set	2
 705                     ; 110 	unsigned char i = 0;
 707  0142 0f02          	clr	(OFST+0,sp)
 709                     ; 112 	sfr_I2C.CR2.START = 1;
 711  0144 72105211      	bset	21009,#0
 713  0148               L362:
 714                     ; 113 	while (!sfr_I2C.SR1.SB) {}
 716  0148 c65217        	ld	a,21015
 717  014b a501          	bcp	a,#1
 718  014d 27f9          	jreq	L362
 719                     ; 114 	sfr_I2C.DR.DR = addr << 1;
 721  014f 7b03          	ld	a,(OFST+1,sp)
 722  0151 48            	sll	a
 723  0152 c75216        	ld	21014,a
 725  0155               L372:
 726                     ; 116 	while (!sfr_I2C.SR1.ADDR) {}
 728  0155 c65217        	ld	a,21015
 729  0158 a502          	bcp	a,#2
 730  015a 27f9          	jreq	L372
 731                     ; 117 	tmp = sfr_I2C.SR1.byte;
 733  015c c65217        	ld	a,21015
 734  015f 6b01          	ld	(OFST-1,sp),a
 736                     ; 118 	tmp = sfr_I2C.SR3.byte;
 738  0161 c65219        	ld	a,21017
 739  0164 6b01          	ld	(OFST-1,sp),a
 742  0166 2016          	jra	L303
 743  0168               L113:
 744                     ; 121 		while (!sfr_I2C.SR1.TXE) {}
 746  0168 c65217        	ld	a,21015
 747  016b a580          	bcp	a,#128
 748  016d 27f9          	jreq	L113
 749                     ; 122 		sfr_I2C.DR.byte = buf[i++];
 751  016f 7b02          	ld	a,(OFST+0,sp)
 752  0171 97            	ld	xl,a
 753  0172 0c02          	inc	(OFST+0,sp)
 755  0174 9f            	ld	a,xl
 756  0175 5f            	clrw	x
 757  0176 97            	ld	xl,a
 758  0177 72fb06        	addw	x,(OFST+4,sp)
 759  017a f6            	ld	a,(x)
 760  017b c75216        	ld	21014,a
 761  017e               L303:
 762                     ; 120 	while (i < count) {
 764  017e 7b02          	ld	a,(OFST+0,sp)
 765  0180 1108          	cp	a,(OFST+6,sp)
 766  0182 25e4          	jrult	L113
 767                     ; 124 	sfr_I2C.CR2.STOP = 1;
 769  0184 72125211      	bset	21009,#1
 770                     ; 125 }
 773  0188 5b03          	addw	sp,#3
 774  018a 81            	ret
 829                     ; 127 void set_leds(unsigned char *states) {
 830                     	switch	.text
 831  018b               _set_leds:
 833  018b 89            	pushw	x
 834  018c 89            	pushw	x
 835       00000002      OFST:	set	2
 838                     ; 129 	i2c_buf[0] = 0b00010110;
 840  018d 35160010      	mov	_i2c_buf,#22
 841                     ; 130 	for (i = 0; i < 4; i++) {
 843  0191 0f01          	clr	(OFST-1,sp)
 845  0193               L343:
 846                     ; 131 		i2c_buf[i+1] = 0;
 848  0193 7b01          	ld	a,(OFST-1,sp)
 849  0195 5f            	clrw	x
 850  0196 97            	ld	xl,a
 851  0197 6f11          	clr	(_i2c_buf+1,x)
 852                     ; 132 		for (j = 0; j < 4; j++) {
 854  0199 0f02          	clr	(OFST+0,sp)
 856  019b               L153:
 857                     ; 133 			if (!states[4 * i + j]) {
 859  019b 7b01          	ld	a,(OFST-1,sp)
 860  019d 97            	ld	xl,a
 861  019e a604          	ld	a,#4
 862  01a0 42            	mul	x,a
 863  01a1 01            	rrwa	x,a
 864  01a2 1b02          	add	a,(OFST+0,sp)
 865  01a4 2401          	jrnc	L03
 866  01a6 5c            	incw	x
 867  01a7               L03:
 868  01a7 02            	rlwa	x,a
 869  01a8 72fb03        	addw	x,(OFST+1,sp)
 870  01ab 7d            	tnz	(x)
 871  01ac 261a          	jrne	L753
 872                     ; 134 				i2c_buf[i + 1] |= 1 << (j * 2);
 874  01ae 7b01          	ld	a,(OFST-1,sp)
 875  01b0 5f            	clrw	x
 876  01b1 97            	ld	xl,a
 877  01b2 7b02          	ld	a,(OFST+0,sp)
 878  01b4 48            	sll	a
 879  01b5 905f          	clrw	y
 880  01b7 9097          	ld	yl,a
 881  01b9 a601          	ld	a,#1
 882  01bb 905d          	tnzw	y
 883  01bd 2705          	jreq	L23
 884  01bf               L43:
 885  01bf 48            	sll	a
 886  01c0 905a          	decw	y
 887  01c2 26fb          	jrne	L43
 888  01c4               L23:
 889  01c4 ea11          	or	a,(_i2c_buf+1,x)
 890  01c6 e711          	ld	(_i2c_buf+1,x),a
 891  01c8               L753:
 892                     ; 132 		for (j = 0; j < 4; j++) {
 894  01c8 0c02          	inc	(OFST+0,sp)
 898  01ca 7b02          	ld	a,(OFST+0,sp)
 899  01cc a104          	cp	a,#4
 900  01ce 25cb          	jrult	L153
 901                     ; 130 	for (i = 0; i < 4; i++) {
 903  01d0 0c01          	inc	(OFST-1,sp)
 907  01d2 7b01          	ld	a,(OFST-1,sp)
 908  01d4 a104          	cp	a,#4
 909  01d6 25bb          	jrult	L343
 910                     ; 138 	send_i2c(I2C_ADDR, i2c_buf, 6);
 912  01d8 4b06          	push	#6
 913  01da ae0010        	ldw	x,#_i2c_buf
 914  01dd 89            	pushw	x
 915  01de a667          	ld	a,#103
 916  01e0 cd0140        	call	_send_i2c
 918  01e3 5b03          	addw	sp,#3
 919                     ; 139 }
 922  01e5 5b04          	addw	sp,#4
 923  01e7 81            	ret
 985                     ; 141 void set_vals(unsigned char start, unsigned char stop, unsigned char v) {
 986                     	switch	.text
 987  01e8               _set_vals:
 989  01e8 89            	pushw	x
 990  01e9 88            	push	a
 991       00000001      OFST:	set	1
 994                     ; 143 	for (i = start; i < stop; i++) {
 996  01ea 9e            	ld	a,xh
 997  01eb 6b01          	ld	(OFST+0,sp),a
1000  01ed 200a          	jra	L714
1001  01ef               L314:
1002                     ; 144 		leds[i] = v;
1004  01ef 7b01          	ld	a,(OFST+0,sp)
1005  01f1 5f            	clrw	x
1006  01f2 97            	ld	xl,a
1007  01f3 7b06          	ld	a,(OFST+5,sp)
1008  01f5 e700          	ld	(_leds,x),a
1009                     ; 143 	for (i = start; i < stop; i++) {
1011  01f7 0c01          	inc	(OFST+0,sp)
1013  01f9               L714:
1016  01f9 7b01          	ld	a,(OFST+0,sp)
1017  01fb 1103          	cp	a,(OFST+2,sp)
1018  01fd 25f0          	jrult	L314
1019                     ; 146 }
1022  01ff 5b03          	addw	sp,#3
1023  0201 81            	ret
1058                     	xdef	_main
1059                     	xdef	_diagonal_blink
1060                     	xdef	_group_spiral_4
1061                     	xdef	_spiral
1062                     	xdef	_clear
1063                     	xdef	_set_vals
1064                     	xdef	_delay
1065                     	switch	.ubsct
1066  0000               _leds:
1067  0000 000000000000  	ds.b	16
1068                     	xdef	_leds
1069  0010               _i2c_buf:
1070  0010 000000000000  	ds.b	10
1071                     	xdef	_i2c_buf
1072                     	xdef	_set_leds
1073                     	xdef	_send_i2c
1093                     	end
