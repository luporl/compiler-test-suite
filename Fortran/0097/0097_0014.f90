type ty
integer,pointer::ptr(:)
integer,pointer::ptr2(:)
end type ty
type(ty)::obj
integer,target:: c(3)=[1,2,3]
integer,target:: d(5)=[1,2,3,4,5]
obj%ptr=> c(::2)
obj%ptr2=> d(::2)
call ss2(obj%ptr(:),obj%ptr2(:))
if (any(c/=[11,2,13])) print *,102,c
if (any(d/=[11,2,13,4,15])) print *,103,c
print *,'pass'
contains
subroutine ss2(x,y)
integer,contiguous::x(:)
integer,contiguous::y(:)
x =x+10
y =y+10
end subroutine
end

