module m1
contains
 subroutine s(p)
 integer,pointer,intent(in)::p(:,:)
integer,allocatable:: a(:,:)
do k2=1,size(p,2)
do k1=1,size(p,1)
p(k1,k2)=k1+k2
end do
end do
do k2=1,size(p,2)
do k1=1,size(p,1)
if ( p(k1,k2)/=k1+k2 ) print *,1001,k1,k2,p(k1,k2)
end do
end do
if (sum(p)/=21) print *,2001
allocate( a, source=p)
call foo(a)
end
 subroutine foo(a)
 integer,allocatable,intent(in)::a(:,:)
do k2=1,size(a,2)
do k1=1,size(a,1)
if ( a(k1,k2)/=k1+k2 ) print *,2001,k1,k2,a(k1,k2)
end do
end do
if (sum(a)/=21) print *,2001
end
end
use m1
integer,pointer,contiguous:: p(:,:)
allocate( p(2,3), source=0)
call s(p)
print *,'pass'
end 
