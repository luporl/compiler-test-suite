module m
type xdef
sequence
complex,dimension(10):: x=(2,2)
real :: r
end type
end module

use m
type (xdef)::xx,yy
complex :: func,r
r = func (xx,yy)
if ( xx%x(10)==(3,3) .and. r==(2,2) ) then
  print *,'pass'
else
  print *,'ng',r , xx%x(10),yy%x(10)
end if
end

function func(xx,yy) result(r)
use m
complex :: r
type (xdef)::xx
type (xdef)::yy
xx%x(10) = yy%x(10)+(1,1)
r=yy%x(10)
end
