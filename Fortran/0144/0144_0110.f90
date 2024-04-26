module m1
integer,parameter:: k1=2,k2=2,k3=2
integer,allocatable:: a(:,:,:)
integer,allocatable:: b(:,:,:)
integer::j1=1,j2=2
contains
subroutine s1(k1,k2,k3)
n1=2
forall (n2=1:k3)
  a(j1:j2:j1 , j1:j2, n2+1 )=a(j1:j2:j1 , j1:j2 , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3)
n1=2
do      n2=1,k3
  c(: , : , n2)=b(j1:j2:j1,j1:j2, n2  )+(n1+n2)
end do
do      n2=1,k3
  b(j1:j2:j1,j1:j2, n2+1)=c(:, : , n2 )
end do
end subroutine
end
use m1
allocate( a(k1,k2,k3+1),b(k1,k2,k3+1))
a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
