PROGRAM MAIN

TYPE ONE
integer::b
integer::c
END TYPE ONE

character(len =1) :: d
character(len =1) :: e

integer::k= kind(ichar('s'))

TYPE(ONE),PARAMETER::O=ONE(ichar('s'),ichar('t'))


TYPE(ONE)::Z
d = 's'
e = 't'

Z=ONE(ichar(d),ichar(e))

print *,O%b ,"--",Z%b
if (O%b.NE.Z%b) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif

print *,O%c ,"--",Z%c
if (O%c.NE.Z%c) then
 print *,'??? (Error: character->integer) ???'
else
 print*, "character->integer OK"
endif



call check1(k,kind(ichar(d)))
END


     subroutine check1(x,y)
      integer x,y
      print *,"KIND::",x ,"--", "KIND::",y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine


