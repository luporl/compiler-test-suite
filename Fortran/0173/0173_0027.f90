MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
r=d
   r%z = d%z+10
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(3),w(3)
logical:: mask(3)=[.true.,.false.,.true.]
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=2)
allocate(v(3)% z(1),source=3)
where (mask)
w= v
else where
w= f(  v )
end where
if (w(1)%z(1)/=1 ) print *,101
if (w(2)%z(1)/=12) print *,102
if (w(3)%z(1)/=3 ) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end
