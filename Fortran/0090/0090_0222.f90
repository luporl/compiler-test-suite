      REAL   ,DIMENSION(10)::C,D

      C=(/(I,I=1,10)/)
      D=(/(I*I,I=1,10)/)

      C(4:8)=C(4:8)+D(6:10)
      D(2:6)=D(1:5)+C(6:10)

      PRINT *,C
      PRINT *,D

      END
