module m1
 type x
   character(80),pointer:: p
   integer:: x1
 end type
end

subroutine s1(v,k)
use m1
type (x):: v
select case(v%p)
  case ('abcef')
    k=1
  case ('12345678901234567890')
    k=2
  case ('12345678901','abcdef')
    k=3
  case default
    k=4
end select
end

use m1
type(x):: v
allocate(v%p)
v%p='xyx'
call s1(v,k)
if (k/=4) print *,101,k
v%p='abcef'
call s1(v,k)
if (k/=1) print *,102,k
v%p='12345678901234567890'
call s1(v,k)
if (k/=2) print *,103,k
v%p='12345678901'
call s1(v,k)
if (k/=3) print *,104,k
v%p='abcdef'
call s1(v,k)
if (k/=3) print *,105,k
print *,'pass'
end
