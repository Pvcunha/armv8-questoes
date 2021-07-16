      .globl teste

teste:
      
      ADD X19, X30, XZR
// Player 1
      ADD X12, X0, XZR
      BL Pontuacao
      ADD X20, X10, XZR // salva pontuacao player 1

// Player 2
      ADD X10, XZR, XZR // zera contador
      ADD X12, X1, XZR
      BL Pontuacao
Exit:
      MOV X30, X19
      
      LDR X9, =66
      MOV X5, X9 
      CMP X10, X20
      B.EQ E
      CMP X10, X20
      B.LT p1
      MOV X0, X5 
      BR X30
E:
      LDR X9, =69
      MOV X5, X9  
      MOV X0, X5 
      BR X30
p1:
      LDR X9, =65
      MOV X5, X9  
      MOV X0, X5 
      BR X30

Pontuacao:
      ADD X9, XZR, XZR // i = 0
      ADD X10, XZR, XZR // pontos

      loop:
      ADD X11, X12, X9 // str[X9]
      LDRSB X13, [X11, #0]
      CBZ X13, Out
      ADD X9, X9, #1

      CMP X13, #65 // A
      B.EQ One
      CMP X13, #69 // E
      B.EQ One
      CMP X13, #73 // I
      B.EQ One
      CMP X13, #79 // O
      B.EQ One
      CMP X13, #85 // U
      B.EQ One
      CMP X13, #78 // N
      B.EQ One
      CMP X13, #82 // R
      B.EQ One
      CMP X13, #83 // S
      B.EQ One

      CMP X13, #68 // D
      B.EQ Two
      CMP X13, #71 // G
      B.EQ Two
      CMP X13, #84 // T
      B.EQ Two

      CMP X13, #66 // B
      B.EQ Three
      CMP X13, #67 // C
      B.EQ Three
      CMP X13, #77 // M
      B.EQ Three
      CMP X13, #80 // P
      B.EQ Three

      CMP X13, #70 // F
      B.EQ Four
      CMP X13, #72 // H
      B.EQ Four
      CMP X13, #86 // V
      B.EQ Four
      CMP X13, #87 // W
      B.EQ Four
      CMP X13, #89 // Y
      B.EQ Four

      CMP X13, 75 // K
      B.EQ Five

      CMP X13, 74 // J
      B.EQ Eight
      CMP X13, 76 // L
      B.EQ Eight
      CMP X13, 88 // X
      B.EQ Eight

      CMP X13, #81 // Q
      B.EQ Ten
      CMP X13, #90 // Z
      B.EQ Ten

      B loop
One:
      ADD X10, X10, #1
      B loop
Two:
      ADD X10, X10, #2
      B loop
Three:
      ADD X10, X10, #3
      B  loop
Four:
      ADD X10, X10, #4
      B loop
Five:
      ADD X10, X10, #5
      B loop
Eight:
      ADD X10, X10, #8
      B loop
Ten:
      ADD X10, X10, #10
      B loop
Out:
      BR X30