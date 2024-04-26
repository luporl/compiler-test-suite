MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
type vt
  TYPE(x) :: v(3)
end type
type wt
  TYPE(x) :: w(3)
end type
type gt
  TYPE(x) :: g(3)
end type
type (vt)::vv(3)
type (wt)::ww(3)
type (gt)::gg(3)
type(x):: w(3),g(3),v(3)
allocate(v(2)% z(1),source=1)
ww(3)%w=   v 
if (allocated(ww(3)%w(1)%z)) print *,201
if (ww(3)%w(2)%z(1)/=1 ) print *,101
if (allocated(ww(3)%w(3)%z)) print *,202
ww(3)%w(2:3)=   v(:2) 
if (allocated(ww(3)%w(1)%z)) print *,1201
if (allocated(ww(3)%w(2)%z)) print *,1201
if (ww(3)%w(3)%z(1)/=1 ) print *,1203
g=   v(2) 
if (g(1)%z(1)/=1 ) print *,2101
if (g(2)%z(1)/=1 ) print *,2101
if (g(3)%z(1)/=1 ) print *,2101
g=   v(1) 
if (allocated(g(1)%z)) print *,3201
if (allocated(g(2)%z)) print *,3202
if (allocated(g(3)%z)) print *,3203
g(1:3:2)=   v(2) 
if (g(1)%z(1)/=1 ) print *,4101
if (allocated(g(2)%z)) print *,4202
if (g(3)%z(1)/=1 ) print *,4103
ww(3)%w=   v(3) 
if (allocated(ww(3)%w(1)%z)) print *,3201
if (allocated(ww(3)%w(2)%z)) print *,3202
if (allocated(ww(3)%w(3)%z)) print *,3203
ww(3)%w=   f(v) 
if (allocated(ww(3)%w(1)%z)) print *,201
if (ww(3)%w(2)%z(1)/=1 ) print *,101
if (allocated(ww(3)%w(3)%z)) print *,202
ww(3)%w(2:3)=   f(v(:2)) 
if (allocated(ww(3)%w(1)%z)) print *,12011
if (allocated(ww(3)%w(2)%z)) print *,12012
if (ww(3)%w(3)%z(1)/=1 ) print *,1203
g=   v(1) 
if (allocated(g(1)%z)) print *,3201
if (allocated(g(2)%z)) print *,3202
if (allocated(g(3)%z)) print *,3203
g=   f(v(2)) 
if (g(1)%z(1)/=1 ) print *,2101
if (g(2)%z(1)/=1 ) print *,2101
if (g(3)%z(1)/=1 ) print *,2101
g=   v(1) 
if (allocated(g(1)%z)) print *,3201
if (allocated(g(2)%z)) print *,3202
if (allocated(g(3)%z)) print *,3203
g(1:3:2)=   f(v(2)) 
if (g(1)%z(1)/=1 ) print *,4101
if (allocated(g(2)%z)) print *,3202
if (g(3)%z(1)/=1 ) print *,4103
v=   v 
if (allocated(v(1)%z)) print *,5201
if (v(2)%z(1)/=1 ) print *,101
if (allocated(v(3)%z)) print *,6202
v(2:3)=   v(:2) 
if (allocated(v(1)%z)) print *,12013
if (allocated(v(2)%z)) print *,12014
if (v(3)%z(1)/=1 ) print *,1203
v(2)=v(3)
if (allocated(v(1)%z)) print *,12015
if (v(2)%z(1)/=1 ) print *,1203
if (v(3)%z(1)/=1 ) print *,1203
v(3)=v(1)
if (allocated(v(1)%z)) print *,120111
if (v(2)%z(1)/=1 ) print *,1203
if (allocated(v(3)%z)) print *,120112
v=   v(2) 
if (v(1)%z(1)/=1 ) print *,2101
if (v(2)%z(1)/=1 ) print *,2101
if (v(3)%z(1)/=1 ) print *,2101
v(1:3:2)=   g(2) 
if (allocated(v(1)%z)) print *,120113
if (v(2)%z(1)/=1 ) print *,1203
if (allocated(v(3)%z)) print *,120114
v=   v(2) 
if (v(1)%z(1)/=1 ) print *,2101
if (v(2)%z(1)/=1 ) print *,2101
if (v(3)%z(1)/=1 ) print *,2101
v(1:3:2)=   g(2) 
if (allocated(v(1)%z)) print *,120115
if (v(2)%z(1)/=1 ) print *,1203
if (allocated(v(3)%z)) print *,120116
v=   f(v) 
if (allocated(v(1)%z)) print *,20117
if (v(2)%z(1)/=1 ) print *,101
if (allocated(v(3)%z)) print *,20218
v(2:3)=   f(v(:2)) 
if (allocated(v(1)%z)) print *,120119
if (allocated(v(2)%z)) print *,120120
if (v(3)%z(1)/=1 ) print *,1203
v(2)=f(v(3))
if (allocated(v(1)%z)) print *,120121
if (v(2)%z(1)/=1 ) print *,1203
if (v(3)%z(1)/=1 ) print *,1203
v(3)=f(v(1))
if (allocated(v(1)%z)) print *,120122
if (v(2)%z(1)/=1 ) print *,120323
if (allocated(v(3)%z)) print *,1201241
v=   f(v(2)) 
if (v(1)%z(1)/=1 ) print *,2101
if (v(2)%z(1)/=1 ) print *,2101
if (v(3)%z(1)/=1 ) print *,2101
v(1:3:2)=   f(g(2)) 
if (allocated(v(1)%z)) print *,120125
if (v(2)%z(1)/=1 ) print *,1203
if (allocated(v(3)%z)) print *,120126
v=   f(v(2) )
if (v(1)%z(1)/=1 ) print *,210127
if (v(2)%z(1)/=1 ) print *,210128
if (v(3)%z(1)/=1 ) print *,210129
end
do k=1,30
call s1
end do
print *,'pass'
end
