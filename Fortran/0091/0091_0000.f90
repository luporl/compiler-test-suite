PROGRAM MAIN
INTEGER*1::b=CEILING(A=13.2_4,KIND=1)

call check(b,CEILING(13.2_4,1))

END

      subroutine check(x,y)
      integer*1 x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (Error: R->i1) ???'
      else
        print*, "R->i1 OK"
      endif
      end subroutine
