PROGRAM MAIN
complex*8,parameter::d=cmplx(32123_2)
call check(d,cmplx(32123_2))
END
 
subroutine check(x,y)
complex*8 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: i2->C8) ???'
else
print*," i2->C8 OK"
endif 
end subroutine
