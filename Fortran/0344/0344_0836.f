      COMPLEX A(20),B(20),T
      DATA A,B/20*(2.0,-1.0),20*(-2.0,1.0)/
      INTEGER I
      COMMON T

      DO 10 I=1,10
         T=A(I+2)*B(I+1)
         CALL SUB
         A(I)=T*A(I)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END

      SUBROUTINE SUB
      COMPLEX T
      COMMON T
      T=-T
      RETURN
      END
