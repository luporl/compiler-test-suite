SUBROUTINE SUB(A,B,N)
  REAL*8 A(1024),B(1024)

  DO I=1,1024
     A(I) =  A(I) + B(I) 
  ENDDO
  RETURN
END SUBROUTINE SUB

PROGRAM MAIN
END PROGRAM MAIN
