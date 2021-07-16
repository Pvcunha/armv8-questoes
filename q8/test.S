 	.globl test
 	
test:

      MOV X9, X0

      ADD X11, XZR, XZR // i = 0
      ADD X12, XZR, XZR // soma

      loop:
      ADD X19, X9, X11 // str[X9]
      LDRSB X13, [X19, #0]
      CBZ X13, Exit
      ADD X11, X11, #1

      SUB X13, X13, #48 // str[x9] - '0'
      MOV X10, #1
      B fact
Exit:
      MOV X0, X12
      BR X30
fact: 
      CMP X13, XZR
      B.EQ Endfact
      MUL X10, X10, X13
      SUB X13, X13, #1
      B fact
Endfact:
      ADD X12, X12, X10
      B loop

