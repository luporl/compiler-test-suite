subroutine s1(k)
character(2),target ::t(5)=['11','22','33','44','55']
type ty
character(2),pointer::p(:)
end type
type(ty) :: obj
if (k==1) then
obj%p=>t(1:3)
else
obj%p=>t(1::2)
endif
call ss(obj%p(:))
call ss(obj%p(:)(:))
call ss(obj%p(:)(:2))
call ss(obj%p(:)(1:2))
call ss(obj%p(:)(k:2))
call ss(obj%p(:)(k:k+1))
call ss(obj%p(1:3:1)(k:k+1))
call ss(obj%p(1:3:k)(k:k+1))
contains
subroutine ss(a)
character(*)::a(3)
if(len(a).ne.2)print*,"101"
if(loc(a).ne.loc(t))print*,"103"
if(any(a.ne.['11','22','33']))print*,"104"
call sss(a)
end subroutine
subroutine sss(b)
character(2)::b(*)
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b)
if (any(b(:3)/=t(:3))) print *,202
end subroutine
end subroutine
call s1(1)
print *,'pass'
end

