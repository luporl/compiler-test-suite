module m
type xdef
sequence
complex:: x=(2,2)
end type
end module

use m
type (xdef)::xx(5),yy(5)
complex :: r,func
r = func (xx,yy)
if ( xx(5)%x==(3,3) .and. r==(2,2) ) then
  print *,'pass'
else
  print *,'ng',r , xx(5)%x,yy(5)%x
end if
end

function func(xx,yy) result( r )
use m
complex :: r
type (xdef)::xx(5)
type (xdef)::yy(5)
xx(5)%x = yy(5)%x+(1,1)
r=yy(5)%x
end
