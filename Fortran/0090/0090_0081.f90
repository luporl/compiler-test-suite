      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)
      JJ=C(2)
      KK=C(6)

      C(2:6)=C(1:5)+D(J:K)
      D(2:6)=D(JJ:KK)+C(2:6)

      PRINT *,C
      PRINT *,D

      END
