      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)
      J=C(1)
      K=C(5)
      JJ=C(1)
      KK=C(5)

      C(2:6)=C(J:K)+D(JJ:KK)
      D(2:6)=D(2:6)+C(1:5)

      PRINT *,C
      PRINT *,D

      END
