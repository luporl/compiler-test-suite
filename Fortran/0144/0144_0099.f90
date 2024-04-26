module m1
integer,parameter:: k1=2,k2=2,k3=2
type x
integer::dummy
integer:: a(k1,k2,k3+1)
integer:: b(k1,k2,k3+1)
end type
type (x)::z
integer::v(0)
contains
subroutine s1(k1,k2,k3)
n1=k1
forall (n2=1:k3)
  z%a(: , v, n2+1 )=z%a(: , v , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3)
n1=k1
do      n2=1,k3
  c(: , v  , n2)=z%b(:, v  , n2  )+(n1+n2)
end do
do      n2=1,k3
  z%b(: ,v , n2+1)=c(:, v  , n2 )
end do
end subroutine
end
use m1
z%a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
z%b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
