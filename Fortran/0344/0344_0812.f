      DOUBLE PRECISION A(20),B(20),T
      DATA A,B/20*2.0,20*-3.0/
      INTEGER I
      LOGICAL L(10)/.FALSE.,3*.TRUE.,3*.FALSE.,3*.TRUE./

      DO 10 I=1,10
         T=A(I+2)*B(I)-B(I+1)
         IF (L(I)) THEN
            T=T-A(I+2)
            A(I+2)=T*A(I)
         ENDIF
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
