module m1
integer,parameter:: k1=3,k2=4,k3=5
type x
integer:: a(k1+1,k2,k3)
integer:: b(k1+1,k2,k3)
end type
type(x)::z
integer::n1=2,n2=2,n3=1
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1)
  z%a(n0+1,:,::min(1,n0))=z%a(n0,:,:)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1+1,k2,k3)

do      n0=1,k1
  c(n0,:,:)=z%b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  z%b(n0+1,:,:)=c(n0,:,:)
end do
end subroutine
end
use m1
z%a=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3])
z%b=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
