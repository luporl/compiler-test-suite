      INTEGER*2   A1,A2
      INTEGER*4   B1,B2
      REAL*4      C1,C2
      REAL*8      D1,D2
      LOGICAL*4   E1,E2,E3,E4
C
      DATA A1,A2/1,2/
      DATA B1,B2/1,2/
      DATA C1,C2/2*0.0/
      DATA D1,D2/2*0.0/
      DATA E1,E2,E3,E4/.TRUE.,.TRUE.,.FALSE.,.FALSE./
C
      E1 = A1.LE.A2
      E2 = B1.LE.B2
      E3 = C1.LE.C2
      E4 = D1.LE.D2
C
      WRITE(6,*) A1,A2
      WRITE(6,*) B1,B2
      WRITE(6,*) C1,C2
      WRITE(6,*) D1,D2
      WRITE(6,*) E1,E2,E3,E4
      STOP
      END
