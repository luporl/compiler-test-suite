subroutine s1()
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
obj%p=>t
call ss(obj%p(1:3))
call ss(obj%p(1:3)(:))
call ss(obj%p(1:3)(:2))
call ss(obj%p(1:3)(1:2))
contains
subroutine ss(a)
character(*)::a(3)
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1()
print *,'pass'
end

