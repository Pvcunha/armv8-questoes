	.globl test

test:
	LDUR X9,  [X0, #0] 	// load a
	LDUR X10, [X1, #0] 	// load b
	LDUR X11, [X2, #0] 	// load c
	LDUR X12, [X3, #0] 	// load x
	SUB X12, X12, X12   // x = 0
	CMP X9, XZR
	B.LT Exit 			// a < 0
	
	Cond2: 				// X10 <= 64 
	CMP X10, #64   
	B.GT Exit 			// X10 > 64

	Cond3: 				// X11 > 24 
	CMP X11, #24
	B.LE Exit    		// X11 <= 24
	ADD X12, X12, 1
	
	Exit:
	STUR X9, [X0, #0]
	STUR X10, [X1, #0]
	STUR X11, [X2, #0]
	STUR X12, [X3, #0]
	BR X30
