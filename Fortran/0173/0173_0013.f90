MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z1(:)
    integer              :: z2
    integer, ALLOCATABLE :: z3(:)
  END TYPE
    TYPE(x),pointer     :: p(:)
CONTAINS
  FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d(:)
    TYPE(x),pointer     :: r(:)
allocate(r(size(d)))
p=>r
   r=d
do k=1,size(d)
   r(k)%z1=d(k)%z1+1
   r(k)%z2=d(k)%z2+1
   r(k)%z3=d(k)%z3+1
end do
  END FUNCTION 
END MODULE 
subroutine s1(n1,n2,n3)
use  m1
  TYPE(x),allocatable :: v(:)
do k=1,100
allocate(v(3))
allocate(v(n1)% z1(n1),source=1)
         v(n1)% z2=1
allocate(v(n1)% z3(n1),source=1)
allocate(v(n2)% z1(n1),source=1)
         v(n2)% z2=1
allocate(v(n2)% z3(n1),source=1)
v(n2:n3)= f(  v(n1:n2) )
deallocate(p)
if (v(n1)%z1(n1)/=1 ) print *,101
if (v(n1)%z2/=1 ) print *,101
if (v(n1)%z3(n1)/=1 ) print *,101
if (v(n2)%z1(n1)/=2 ) print *,101
if (v(n2)%z2/=2 ) print *,101
if (v(n2)%z3(n1)/=2 ) print *,101
if (v(n3)%z1(n1)/=2 ) print *,101
if (v(n3)%z2/=2 ) print *,101
if (v(n3)%z3(n1)/=2 ) print *,101
deallocate(v)
end do
end
do k=1,100
call s1(1,2,3)
end do
print *,'pass'
end
