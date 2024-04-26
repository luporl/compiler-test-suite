module m1
integer,parameter:: k1=3,k2=4,k3=5
integer:: a(k1+1,k2,k3+1)
integer:: b(k1+1,k2,k3+1)
integer::n1=2,n2=2,n3=1
contains
subroutine s1(k1,k2,k3)
integer:: d(k1+1,k2,k3+1)
d=a
forall (n0=1:k1)
  d(n1:n2*n1     ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:1   ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:1_1 ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:1_2 ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:1_4 ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:1_8 ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:n3  ,:,n0+1)=d(2_8:,:,n0)+(n0+n2)
  d(n1:n2*n1:min(1,n0),:,n0+1)=d(2_8:,:,n0)+(n0+n2)
end forall
a=d
end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1+1,k2,k3+1)

do nnn=1,8
do      n0=1,k1
  c(2_8:,:,n0)=b(2_8:,:,n0)+n0+n2
end do
do      n0=1,k1
  b(2_8:,:,n0+1)=c(2_8:,:,n0)
end do
end do
end subroutine
end
use m1
a=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3+1])
b=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
