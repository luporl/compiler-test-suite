module m1
  contains
   function   foo(a1,a2,a3) result(ir)
    integer,contiguous::a1(:)
    integer,contiguous::a2(:)
    integer,contiguous::a3(:)
    if (any(a1/=[1,3])) print *,201
    if (any(a2/=[1,3])) print *,201
    if (any(a3/=[1,3])) print *,201
    ir=1
   end function 
subroutine ss(b)
integer:: b(:)
if (foo(b,b,b)+foo(b,b,b)+foo(b,b,b)/=3) print *,301
end subroutine
end
subroutine s1
use m1
integer:: c(3)=[1,2,3]
call ss(c(::2))
if (any(c/=[1,2,3])) print *,101
end
call s1
print *,'OK'
end 
