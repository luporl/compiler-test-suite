      PROGRAM MAIN
      INTEGER*8 A(100),B(100)
      INTEGER*4 N
      DATA B/100*3/
      DATA N/8/
C
      DO 10 I=1,100
         IF(MOD(I,2).NE.0) THEN
            A(I) = ISHFT(B(I),N)
         ELSE
            A(I) = B(I)
         ENDIF
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
