PROGRAM MAIN
real,parameter::d=max(-32_1,-21_1,-34_1,-22_1,0.123_4)
call check(d,max(-32_1,-21_1,-34_1,-22_1,0.123_4))
END
 
subroutine check(x,y)
real x,y
print *,x, "--",y
if (x.ne.y) then
print *,'??? Error in max value ???'
else
print*," Max CALCULATION IS  OK"
endif
end subroutine
