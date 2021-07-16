 	.globl teste

 teste:
 	
    LDUR X9,  [X0, #0]
    MOV X10, 0xFFFFFFFFFFFFFFFF
    EOR  X9, X9, X10
    STUR X9,  [X0, #0]
	BR X30
