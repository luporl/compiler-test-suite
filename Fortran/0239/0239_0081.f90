subroutine s1(n1,n4,n5)
type x
integer x1
integer,allocatable,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v

allocate (v%y2%a(n5,n4),stat=kkk)
v%y2%a=1
allocate (v%y2%b,source=v%y2%a,stat=kkk)
allocate (v%y2%c,source=v%y2%b,stat=kkk)

v%y2%b=2
n2=2;n3=3
do k2=1,3
do k1=1,4
 v%y2%a(k1+1,k2+1)=v%y2%a(k1,k2)+v%y2%b(k1,k2)
end do
end do
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,100
!
v%y2%a=1
v%y2%b=2
do k2=1,3
do k1=1,4
associate( p=>v%y2%a,w=>v%y2%a)
 w(k1+1,k2+1)=p(k1,k2)+v%y2%b(k1,k2)
end associate
end do
end do
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,101
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a,w=>v%y2%a)
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v%y2%b(k1,k2)
end do
end do
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,102
!
v%y2%a=1
v%y2%b=2
do k2=1,3
do k1=1,4
associate( p=>v%y2%a(k1,k2),w=>v%y2%a)
 w(k1+1,k2+1)=p+v%y2%b(k1,k2)
end associate
end do
end do
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,103
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a,w=>v%y2%a)
 w(n2:n5,n2:n4)=p(:n4,:n3)+v%y2%b(:n4,:n3)
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,104
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(:,:),w=>v%y2%a(:,:))
 w(n2:n5,n2:n4)=p(:n4,:n3)+v%y2%b(:n4,:n3)
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,105
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(n1:n5,n1:n4),w=>v%y2%a(n1:n5,n1:n4))
 w(n2:n5,n2:n4)=p(:n4,:n3)+v%y2%b(:n4,:n3)
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,106
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(n1:n5,n1:n4),w=>v%y2%a(n1:n5,n1:n4))
 w(n2:n5,n2:n4)=p(n1:n4,n1:n3)+v%y2%b(n1:n4,n1:n3)
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,3,3,3,1,3,3,3,3]))print *,107
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(:,:),w=>v%y2%a(:,:))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v%y2%b(k1,k2)
end do
end do
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,108
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(n1:n5,n1:n4),w=>v%y2%a(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v%y2%b(k1,k2)
end do
end do
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,109
!
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(n1:n5,n1:n4),w=>v%y2%a(n1:n5,n1:n4))
do k2=1,3
do k1=1,4
 w(k1+1,k2+1)=p(k1,k2)+v%y2%b(k1,k2)
end do
end do
end associate
if (any([v%y2%a]/=[1,1,1,1,1,1,3,3,3,3,1,3,5,5,5,1,3,5,7,7]))print *,110
end
n1=1;n4=4;n5=5
call       s1(n1,n4,n5)
print *,'pass'
end
