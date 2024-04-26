!
!
module mod
contains
subroutine sub(m, a, b)
integer*4 , value :: m
real*4    a(16), b(2)
n = m
do i=1,n
a(i) = a(i) * b(m)
end do
end subroutine
end module

program main
use mod
real*4    a(16), b(2)
a = 3
b(1) = 0
b(2) = 4
call sub(1, a, b)
if (a(1).ne.0) stop 'NG:1'
if (.not.all(a(2:16).eq.3)) stop 'NG:2'
a = 3
call sub(2, a, b)
if (a(1).ne.12) print *, 'NG:3', a(1)
if (a(2).ne.12) print *, 'NG:4', a(2)
if (.not.all(a(3:16).eq.3)) print *, 'NG:5', a(3:16)
print *, 'PASS'
end
