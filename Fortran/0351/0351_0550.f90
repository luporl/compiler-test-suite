SUBROUTINE FOO(A,B,C,N)
  REAL(8),DIMENSION(1:N)::A,B
  LOGICAL(8),DIMENSION(1:N)::C
  INTEGER I,J,N
  DO I=1,N
     IF(C(I).EQV..TRUE.) THEN
        A(I) = A(I) + B(I)
     END IF
  ENDDO
END SUBROUTINE FOO

PROGRAM MAIN
END PROGRAM MAIN
