module m1
type y
  integer,allocatable:: x1(:)
end type
integer:: a(-3:-1)=[11,12,13]
integer,target:: v(3)=-[2,1,3]
type(y),target:: w(3)
integer::c=0
contains
subroutine s0
allocate(w(3)%x1(-3:-1),source=a+20)
end subroutine
function f()
type(y),pointer::f!!!(:)
f=>w(3)
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x!!!(:)
allocate (x , mold= f() )
end
subroutine s2
use m1
type(y),allocatable:: x
allocate (x , source= f() )
if ((x%x1(-3)/=11       +20)) print *,2111
if ((x%x1(-2)/=12       +20)) print *,2132
if ((x%x1(-1)/=13       +20)) print *,2133
end
use m1
call s0
do k=1,20
call s1
call s2
if (c/=2) print *,301
c=0
end do

print *,'pass'
end


