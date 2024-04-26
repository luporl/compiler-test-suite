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
  TYPE(x) :: v,w
allocate(v% z(1),source=1)
v= f(  v )
if (v%z(1)/=1 ) print *,101
end
do k=1,1000
call s1
end do
print *,'pass'
end
