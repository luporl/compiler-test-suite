module m1
contains
subroutine sub
integer :: i1(1)
integer :: ia(2)
parameter (i1=UBOUND(ia))
if(i1(1) /= 2) call errtra
end subroutine
end module

use m1
call sub
!
print *, 'pass'
end
