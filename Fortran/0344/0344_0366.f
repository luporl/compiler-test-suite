      PROGRAM MAIN
      LOGICAL * 4 L(10)
      REAL * 4 A(10),B(10),C(10)
      DATA A/1,2,3,4,5,6,7,8,9,0/
      DATA B,C/10*1.,5*1.,5*2./
      DATA L/5*.TRUE.,5*.FALSE./
      DATA M/10/
C
      DO 100 I=1,M
       IF (C(1).NE.0) THEN
        IF (L(I)) THEN
          A(I)=A(I)+B(I)+I
        ENDIF
        IF (A(I).GT.0) THEN
          A(I)=A(I)-1
        ELSE
          A(I)=B(I)
        ENDIF
       ENDIF
100   CONTINUE
C
      
      WRITE(6,99) A
99    FORMAT(4F10.4)
      STOP
      END
