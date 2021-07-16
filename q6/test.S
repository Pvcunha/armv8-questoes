 	.globl teste

 teste:
 	
	MOV X9, XZR // contador
 		
    MOV X13, XZR // indice
      
Loop:
    ADD X10, X0, X13
    LDRSB X12, [X10, #0]
    CBZ X12, Exit
    ADD X13, X13, #1
    CMP X12, #65 //a
    B.EQ Inc
    CMP X12, #69 //e
    B.EQ Inc
    CMP X12, #73 //i
    B.EQ Inc
    CMP X12, #79 //o
    B.EQ Inc
    CMP X12, #83 //u
    B.NE Loop

Inc:
    ADD X9, X9, #1
    B Loop
Exit:
    ADD X0, X9, #0         // Store a
 	BR X30
      
