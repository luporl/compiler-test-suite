module m
type ty
  character(10)::ch(2)
end type
type ty2
  type(ty),pointer::y
end type
contains
subroutine sub(x)
type(ty2)::x
select case (x%y%ch(1))
case("aaa")
   print *,'pass'
case default
   print *,1
end select
end subroutine
end

use m
type(ty2)::x
allocate(x%y)
x%y%ch(1)="aaa"
call sub(x)
end
