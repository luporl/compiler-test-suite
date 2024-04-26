MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x) :: r(size(d))
   r=d
do k=1,size(d)
   r(k)%z1=d(k)%z1+1
   r(k)%z2=d(k)%z2+1
   r(k)%z3=d(k)%z3+1
end do
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2),w(2)
allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
allocate(v(2)% z1(1),source=1)
         v(2)% z2=1
allocate(v(2)% z3(1),source=1)
v(:)= f(  v(:) )
if (v(1)%z1(1)/=2 ) print *,101
if (v(1)%z2/=2 ) print *,101
if (v(1)%z3(1)/=2 ) print *,101
if (v(2)%z1(1)/=2 ) print *,101
if (v(2)%z2/=2 ) print *,101
if (v(2)%z3(1)/=2 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
