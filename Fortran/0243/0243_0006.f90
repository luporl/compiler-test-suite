PROGRAM MAIN
REAL*8::a = abs(-601000.2_8)
call check(a, abs(-601000.2_8))
END

subroutine check(x, y)
REAL*8 x, y
print *,x, "--",y
if (x.ne.y) then
print *,'??? (Error: R8->R8) ???'
else
print*," R8->R8 OK"
endif
end subroutine
