module m1
type x
integer::xx
real(8),allocatable :: a(:,:,:)
end type
end
subroutine s1(k1,k2,k3,v)
use m1
type(x)::v

n2=100
forall (n1=1:k2)
  v%a(: , n1, 2 )=v%a(: , n1 , 1 )+dble(n1+n2)
end forall

end
subroutine s2(k1,k2,k3,v)
use m1
real(8) :: c(k1,k2,k3)
type(x)::v

n2=100
do      n1=1,k2
  c(: , n1 , 2)=v%a(:, n1 , 1  )+dble(n1+n2)
end do
do      n1=1,k2
  v%a(: , n1 , 2)=c(:, n1 , 2 )
end do
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
type(x)::va
type(x)::vb
allocate( va%a(k1,k2,k3),vb%a(k1,k2,k3))
va%a=reshape([(n,n=1,20*3)],[5,3,4])
vb%a=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va%a/=vb%a)) then 
print *,101
print *,va%a
print *,vb%a
endif
print *,'pass'
end
