call test()
print *,'pass'
end
subroutine test()
real x
x = atan2 (1., 1.)
if ( 1.eq.2) x=x
end
