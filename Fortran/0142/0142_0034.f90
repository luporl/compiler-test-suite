subroutine s1(k1,k2,k3,a)
type x
sequence
integer(8) xv,v
end type
type(x) :: a(k1,k2,k3)

forall (n1=1:k2,n2=1:k3)
forall (n0=1:k1)
  a(n0 , n1, n2 )%v=a(n0 , n1 , n2 )%v+dble(n1+n2)
end forall
end forall

end
subroutine s2(k1,k2,k3,b)
type x
sequence
integer(8) xv,v
end type
type(x) :: b(k1,k2,k3)
integer(8) :: c(k1,k2,k3)

do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  c(n0 , n1 , n2)=b(n0, n1 , n2  )%v+dble(n1+n2)
end do
end do
end do
do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  b(n0 , n1 , n2)%v=c(n0, n1 , n2 )
end do
end do
end do
end

integer,parameter:: k1=5,k2=3,k3=4
type x
sequence
integer(8) xv,v
end type
type(x) :: b(k1,k2,k3),a(k1,k2,k3)
a%v=reshape([(n,n=1,20*3)],[5,3,4])
b%v=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a%v/=b%v)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
