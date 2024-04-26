MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
    TYPE(x),pointer     :: p
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x),pointer     :: r
allocate(r)
   r=d
p=>r
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(1),w(1)
allocate(v(1)% z1(1),source=1)
         v(1)% z2=1
allocate(v(1)% z3(1),source=1)
w= f(  v(1) )
deallocate(p)
if (w(1)%z1(1)/=1 ) print *,101
if (w(1)%z2/=1 ) print *,101
if (w(1)%z3(1)/=1 ) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end
