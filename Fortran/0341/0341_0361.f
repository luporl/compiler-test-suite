      IMPLICIT REAL*8(A-H,O-Z)
      PARAMETER (NW=100, NB=5,MATDIM=1)
      COMPLEX*16 WALL, ZCR, PROJ, ZI, Z1, ZZ
      COMMON /ARRAYS/ WALL(NW,NB), RMATRX(NW*NB,NW*NB),
     $ ZCR(NW,NB), PROJ(NW,NB), XMAX(NB), NWALL(NB)
C
      rmatrx=1
      DO 8 I = 1, MATDIM
	RMATRX(I,I) = 1.D0 / RMATRX(I,I)
        DO 8 J = I+1, MATDIM
          RMATRX(J,I) = RMATRX(J,I) * RMATRX(I,I)
          DO 8 K = I+1, MATDIM
            RMATRX(J,K) = RMATRX(J,K) - RMATRX(J,I) * RMATRX(I,K)
8     CONTINUE
      print *,rmatrx(1,1)
      print *,rmatrx(100,100)
      END
