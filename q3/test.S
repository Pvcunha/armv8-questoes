	.globl test

test:
	LDUR X10, [X0, #0]
	LDUR X11, [X1, #0]
	LDR  X12, =0x3F // 0b111111000000
	LSL  X12, X12, #15
	AND  X13, X10, X12
	LSL  X14, X13, #15
	AND  X14, X11, X14
	STUR X13, [X0, #0]
	STUR X14, [X1, #0]
	BR   X30 
