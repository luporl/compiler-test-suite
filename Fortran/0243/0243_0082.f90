PROGRAM MAIN
REAL*8,parameter::d=MOD(123_8,66.4_8)
call check(d, MOD(123_8,66.4_8))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*,"MOD R8->R8 OK"
endif
end subroutine
