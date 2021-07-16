 	.globl teste

 teste:
 	
      MOV X9, X0
      MOV X10, X1

      MOV X11, XZR // i = 0
      LDR X12, =0xfffffffff // soma-externa = 0

      L1:
      ADD X19, X9, X11 // s1[X11]
      LDRSB X13, [X19, #0]
      CBZ X13, Exit
      ADD X11, X11, #1

      MOV X14, XZR // j = 0
      MOV X21, XZR // soma-interna = 0
      
      L2:
      ADD X20, X10, X14 // s1[X14]
      LDRSB X15, [X20, #0]
      CBZ X15, L3
      ADD X14, X14, #1

      CMP X13, X15
      B.EQ L2cont
      B L2

      L3:
      MOV X25, XZR // i = 0
      MOV X22, XZR // soma-externa = 0

      l3in:
      ADD X23, X9, X25 // s1[X11]
      LDRSB X23, [X23, #0]
      CBZ X23, L2cmp
      ADD X25, X25, #1
      CMP X23, X13
      B.NE l3in
      ADD X22, X22, #1
      B l3in

      L2cmp:
      UDIV X21, X21, X22
      CMP X21, X12
      B.GE L2out
      ADD X12, X21, XZR
      
      L2out:
      B L1
      
      L2cont:
      ADD X21, X21, #1
      B L2

Exit:
      MOV X0, X12
      BR X30