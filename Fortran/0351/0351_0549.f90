SUBROUTINE FOO(A,B,C,N)
  INTEGER(8),DIMENSION(1:N)::A,B,C
  INTEGER I,J,N
  DO I=1,N
     A(I) = A(I) + B(I)
  ENDDO
END SUBROUTINE FOO

PROGRAM MAIN
END PROGRAM MAIN
