      INTEGER I401(50,100)/5000*1/
      REAL*8 R1601(100)/100*1/
      DO 10 I=1,100
        DO 11 J=1,50
   11     I401(J,I) = I+J
        NNN = I
        MMM = I - 98
   10 CONTINUE
C
      DO 20 I=1,50
        DO 20 J=1,NNN
          R1601(J) = J
          I401(1,J) = I401(1,J) - J
   20 CONTINUE
      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,111) (I401(1,J),J=1,100,2)
      WRITE(6,222) (R1601(J),J=1,100,2)
      DO 30 I=1,2
        DO 30 J=1,NNN
          R1601(J) = I
          I401(1,J) = I401(1,J) - J
   30 CONTINUE
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,111) (I401(1,J),J=1,100,2)
      WRITE(6,222) (R1601(J),J=1,100,2)
      DO 40 I=1,5
        DO 40 J=1,NNN
          R1601(J) = I
          I401(1,J) = I401(1,J) - J
          R1601(J) = R1601(J) + I401(1,J)
          I401(1,J) = I401(1,J) + R1601(J)
   40 CONTINUE
      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,333) (I401(1,J),J=1,100,2)
      WRITE(6,444) (R1601(J),J=1,100,2)
C
  111 FORMAT(10I7)
  222 FORMAT(8F9.3)
  333 FORMAT(7I10)
  444 FORMAT(5F15.2)
C
      STOP
      END
