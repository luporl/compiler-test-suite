PROGRAM MAIN
REAL*8,parameter::d=DIM(353535.8_4,252525.4_8)
call check(d, DIM(353535.8_4,252525.4_8))
END

subroutine check(x,y)
REAL*8  x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*,"DIM R8->R8 OK"
endif
end subroutine
