MODULE m1
  TYPE :: x
    integer              :: z1(2)
    integer, ALLOCATABLE :: z2(:)
    integer, ALLOCATABLE :: z3(:)
    integer              :: z4(2)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d,a ) RESULT( r )
    TYPE(x), INTENT(IN) :: d,a
    TYPE(x) :: r
   r=d
   r%z1=d%z1+a%z1+1
   r%z2=d%z2+a%z2+1
   r%z3=d%z3+a%z3+1
   r%z4=d%z4+a%z4+1
  END FUNCTION 
END MODULE 
subroutine s1
use  m1
  IMPLICIT NONE
  TYPE(x) :: v(2,3,1),w(2,3,1)
  logical :: m(2,1)=.true.
allocate(v(2,1,1)% z2(2),source=[01,02])
allocate(v(2,2,1)% z2(2),source=[11,12])
allocate(v(2,3,1)% z2(2),source=[21,22])
allocate(v(2,1,1)% z3(2),source=[01,02])
allocate(v(2,2,1)% z3(2),source=[11,12])
allocate(v(2,3,1)% z3(2),source=[21,22])
v(2,1,1)% z1=[01,02]
v(2,2,1)% z1=[11,12]
v(2,3,1)% z1=[21,22]
v(2,1,1)% z4=[01,02]
v(2,2,1)% z4=[11,12]
v(2,3,1)% z4=[21,22]
where (m)
v(2,2:,:)= f(  v(2,:2,:) , v(2,2,1) )
else where
v(2,2:,:)= v(1,1,1) 
end where
if (allocated(v(1,1,1)%z2 )) print *,201
if (allocated(v(1,2,1)%z2 )) print *,202
if (allocated(v(1,3,1)%z2 )) print *,203
if (any(v(2,1,1)%z2/=[01,02]) ) print *,101
if (any(v(2,2,1)%z2/=[13,15]) ) print *,102
if (any(v(2,3,1)%z2/=[23,25]) ) print *,103
if (allocated(v(1,1,1)%z3 )) print *,201
if (allocated(v(1,2,1)%z3 )) print *,202
if (allocated(v(1,3,1)%z3 )) print *,203
if (any(v(2,1,1)%z3/=[01,02]) ) print *,101
if (any(v(2,2,1)%z3/=[13,15]) ) print *,102
if (any(v(2,3,1)%z1/=[23,25]) ) print *,103
if (any(v(2,1,1)%z1/=[01,02]) ) print *,101
if (any(v(2,2,1)%z1/=[13,15]) ) print *,102
if (any(v(2,3,1)%z1/=[23,25]) ) print *,103
if (any(v(2,1,1)%z4/=[01,02]) ) print *,101
if (any(v(2,2,1)%z4/=[13,15]) ) print *,102
if (any(v(2,3,1)%z4/=[23,25]) ) print *,103
end
do k=1,100
call s1
end do
print *,'pass'
end
