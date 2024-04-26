program main
real*8, parameter::a(8) = (/1.0_8,2.0_8,3.0_8,4.0_8,5.0_8,6.0_8,7.0_8,8.0_8 /)
real*8, parameter::b(0) = reshape(a, (/0/))

real*8, parameter::c(12) = (/1.0_8,2.0_8,3.0_8,4.0_8,5.0_8,6.0_8,7.0_8,8.0_8,&
                 9.0_8,10.0_8,11.0_8,12.0_8 /)

real*8, parameter::d(0) = reshape(c, (/0/))

real*8::e = dot_product(b, d)
real*8::f
integer::h = kind(dot_product(b,d))
f = dot_product(b,d)

print*,e
print*,f

print*, e, '--', f
if(e.ne.f) then
print*, '??? (Error: R->R) ???'
else
print*, 'R -> R'
endif
call check1(h, kind(dot_product(b,d)))
end

subroutine check1(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
