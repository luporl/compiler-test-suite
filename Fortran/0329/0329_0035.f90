module mdef
contains
pure function fx(x)
real,intent(in)::x
real :: fx
fx=x+1
end function
end module

use mdef
real::i(2)
integer::ii
i=2
i(2)=3
do ii=1,2
call sub(fx,i(ii))
end do
if ( abs ( i(1) - 15.0 ) < 0.0001 .and.  &
     abs ( i(2) - 19.0 ) < 0.0001 ) then
  print *,'pass'
else
  print *,'ng',i
end if
end

subroutine sub(fx,i)
integer :: ii
real :: i
interface
pure function fx(x)
real,intent(in)::x
real :: fx
end function
end interface
do ii=1,2
i=fx(i)+ii+i
end do
end subroutine
