module m1
integer,parameter:: k1=2,k2=2,k3=2
integer,allocatable:: a(:,:,:,:)
integer,allocatable:: b(:,:,:,:)
type xxx
integer::mx(1,1,1,2:2)=2
end type
type (xxx):: w
integer::n0=0
contains
pure function mf(n1,n2,n3)
intent(in)::n1,n2,n3
mf=n1-n2+n3
end function
subroutine s1(k1,k2,k3)
forall (n1=1:k2,n2=1:k3)
  a(: , n1, n2+1 ,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)):)=a(: , n1 , n2 ,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)):)+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3,k1)

do      n2=1,k3
do      n1=1,k2
  c(: , n1 , n2,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)):)=b(:, n1 , n2,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)):  )+(n1+n2)
end do
end do
do      n2=1,k3
do      n1=1,k2
  b(: , n1 , n2+1,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)):)=c(:, n1 , n2,mf(1,1,w%mx(1,1,1,k1-k2+k3+n0)): )
end do
end do
end subroutine
end
use m1
allocate( a(k1,k2,k3+1,k1),b(k1,k2,k3+1,k1))
a=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
b=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
