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
allocate(w(1)%x1(-3:-1),source=a)
allocate(w(2)%x1(-3:-1),source=a+10)
allocate(w(3)%x1(-3:-1),source=a+20)
end subroutine
impure elemental function f(d)
type(y)::f
type(y),intent(in)::d
f=d
c=c+1
end function
end
subroutine s1
use m1
type(y),allocatable:: x(:),e(:)
allocate(e,source=w)
allocate (x , mold= f(e) )
if (any(lbound(x   )/=1)) print *,111
if (any(ubound(x   )/=3)) print *,112
end
subroutine s2
use m1
type(y),allocatable:: x(:),e(:)
allocate(e,source=w)
allocate (x , source= f(e) )
if (any(lbound(x   )/=1)) print *,211
if (any(ubound(x   )/=3)) print *,212
if ((x(1)%x1(-3)/=11       )) print *,2111
if ((x(1)%x1(-2)/=12       )) print *,2132
if ((x(1)%x1(-1)/=13       )) print *,2133
if ((x(2)%x1(-3)/=11       +10)) print *,3211
if ((x(2)%x1(-2)/=12       +10)) print *,3232
if ((x(2)%x1(-1)/=13       +10)) print *,3233
if ((x(3)%x1(-3)/=11       +20)) print *,3111
if ((x(3)%x1(-2)/=12       +20)) print *,3132
if ((x(3)%x1(-1)/=13       +20)) print *,3133
end
use m1
call s0
do k=1,20
call s1
call s2
if (c/=2*3) print *,301
c=0
end do
print *,'pass'
end


