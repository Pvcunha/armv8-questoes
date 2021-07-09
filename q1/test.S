 	.globl soma

 soma:
 		LDUR X9, [x0, #0]
 		LDUR X10, [X1, #0]
 		LDUR X11, [X2, #0]
 		ADD X11, X9, X10
 		STUR X9, [X0, #0]         // Store a
        STUR X10, [X1, #0]       // Store b
        STUR X11, [X2, #0]      // Store m
 		BR X30