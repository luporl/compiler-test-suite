  PROGRAM MAIN
real*4,parameter::a=123.45_4
real*4,parameter::e=233.56_4
real*4,parameter::f=12.56_4
real*4,parameter::g=123.45_4
real*4,parameter::d=max(a,e,f,g)
call check(d,max(a,e,f,g))
END
 
subroutine check(x,y)
real*4 x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," max CALCULATION IS  OK"
endif
end subroutine
