 	.globl teste

 teste:
 	
     LDUR X12, [X0, #0]
 	
loop:
     CMP X12, #0
     B.LE Exit
     SUB X12, X12, 1
     B loop
Exit:
     STUR X12, [X0, #0]         // Store a
     BR X30