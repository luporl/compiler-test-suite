SUBROUTINE SUB(A,B,C,D)
  REAL*8,DIMENSION(1024)::A,B,C,D
  INTEGER I,N/1024/
  DO I=2,N
     A(I) = A(I) + C(I) * D(I)
     B(I) = B(I-1) + A(I);
  ENDDO
    
END SUBROUTINE SUB

PROGRAM MAIN
END PROGRAM MAIN
