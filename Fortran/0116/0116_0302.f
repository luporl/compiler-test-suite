
      program main
      INTEGER  IA(2,3)/6*0/
      INTEGER  IB(2,3)/6*0/
      real(8),parameter :: ANSWER=2.0
      real(8) :: result

      DO 3 I4=1,100
      DO 2 I3=1,1
         CALL W21(IA(1,I3))
         IB(2,3) =  IA(2,3)
!         write(6,*) IA(2,3)
  2   CONTINUE
 3    CONTINUE
      
      print *,"answer check :"
      result = IB(2,3)
      if ( result .eq. ANSWER ) then
         print *," -> ok"
      else
         print *," -> ng : ",result,ANSWER
      endif

      end program main


      SUBROUTINE W21(IA2)
      INTEGER IA2(3,*)
      IA2(3,2)=2
      END
