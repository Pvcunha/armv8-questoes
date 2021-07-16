 	.globl teste

 teste:
 	
	LDUR X9, [X0, #0]
 	LDUR X10, [X1, #0]
 	LDUR X11, [X0, #0]
 	CMP X10, X11
	B.NE Else
    SUB X11, X10, X9 
 	Else:
    SUB X11, X9, X10;
    Exit:
    STUR X9, [X0, #0]         // Store a
    STUR X10, [X1, #0]       // Store b
    STUR X11, [X2, #0]      // Store m
 	BR X30
