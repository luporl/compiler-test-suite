module m1
integer,parameter:: k2=3
type x
  integer:: x1
end type
type(x) :: b1(k2,k2),b2(k2,k2)
contains
subroutine s1()
forall (n=1:2)
forall (nn=1:3)
  b1(n+1,nn)=b1(n,nn)
end forall
end forall
end subroutine
subroutine s2()
type(x):: w(k2,k2)
do      n=1,2
do      nn=1,3
  w(n,nn)=b2(n,nn)
end do
end do
do      n=1,2
do      nn=1,3
  b2(n+1,nn)=w(n,nn)
end do
end do
end subroutine
end
use m1
i=101
do n2=1,k2
do n3=1,3
b1(n2,n3)=x(i)
b2(n2,n3)=x(i)
i=i+1
end do
end do
call s1()
call s2()
if (any(b1%x1/= b2%x1))print *,101
print *,'pass'
end
