PROGRAM MAIN

TYPE ONE
INTEGER::b
INTEGER::c
END TYPE ONE

TYPE(ONE),PARAMETER::O=ONE(FLOOR(214.11_4,4),FLOOR(2147.11_4,4))


TYPE(ONE)::Z
Z=ONE(INT(214.11_4,4),INT(2147.11_4,4))

call check4(O%b,Z%b)
call check4(O%c,Z%c)
END

      subroutine check4(x,y)
      integer x,y
      print *,x, "--",y
      if (x.ne.y) then
        print *,'??? (Error: R->i4) ???'
      else
        print*,"R->i4 OK"
      endif
      end subroutine


