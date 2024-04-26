module m1
type x
integer(8) xv,v
end type
integer,parameter:: k1=4,k2=4,k3=4
type xx
integer::dummy
type(x),allocatable :: a(:,:,:,:)
type(x),allocatable :: b(:,:,:,:)
end type
type xxx
integer::dummy
type (xx),pointer::z(:)
end type
type (xxx),pointer::w(:,:,:)
integer::i2=2
contains
subroutine s1(k1,k2,k3)

forall (n1=1:k2,n2=2:k3)
forall (n0=1:k1:k1-3)
  w(i2,i2,i2)%z(2)%a(:,n0  , n1, n2 )%v=w(i2,i2,i2)%z(i2)%a(:,n0  , n1 , n2-1 )%v+dble(n1+n2)
end forall
end forall
end subroutine
subroutine s2(k1,k2,k3)
integer(8) :: c(k1,k1,k2,k3)

do      n2=2,k3
do      n1=1,k2
do      n0=1,k1
  c(:,n0 , n1 , n2)=w(i2,i2,i2)%z(i2)%b(:,n0, n1 , n2-1  )%v+dble(n1+n2)
end do
end do
end do
do      n2=2,k3
do      n1=1,k2
do      n0=1,k1
  w(i2,i2,i2)%z(i2)%b(:,n0 , n1 , n2)%v=c(:,n0, n1 , n2 )
end do
end do
end do
end subroutine
end

use m1
allocate(w(i2,i2,i2))
allocate(w(i2,i2,i2)%z(i2))
allocate( w(i2,i2,i2)%z(i2)%a(k1,k1,k2,k3))
allocate( w(i2,i2,i2)%z(i2)%b(k1,k1,k2,k3))
w(i2,i2,i2)%z(i2)%a%v=reshape([(n,n=1,20*4*4)],[4,4,4,4])
w(i2,i2,i2)%z(i2)%b%v=reshape([(n,n=1,20*4*4)],[4,4,4,4])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(w(i2,i2,i2)%z(i2)%a%v/=w(i2,i2,i2)%z(2)%b%v)) then 
print *,101
print *,w(i2,i2,i2)%z(i2)%a
print *,w(i2,i2,i2)%z(i2)%b
endif
print *,'pass'
end
