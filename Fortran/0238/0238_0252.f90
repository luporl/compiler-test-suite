module m1
  type x0
     integer:: x01 (4)
     integer,allocatable:: x02(:,:,:)
  end type
end
subroutine s1(n1,n2,n3)
use m1
type y
integer::y1
type (x0),allocatable::v1(:)
end type
type (x0),allocatable::v1(:)
type(y),allocatable::v11(:,:)
type z
integer::y1(100)
type (x0),allocatable::v2(:)
end type
type(z),pointer::w(:)

allocate(w(3))
allocate(w(3)%v2(2),v11(n3,n2))
do k=1,2
allocate(w(3)%v2(k)%x02(n1,n2,n3))
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w(3)%v2(k)%x02(k1,k2,k3)=kk
kk=kk+1
end do
end do
end do
end do

nmk=-1
allocate( v1 ,stat=nmk,source=w(3)%v2) 
if (nmk/=0) print *,1230

kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
do k=1,2
if (v1(k)%x02(k1,k2,k3)/=kk) print *,101,k
if (w(3)%v2(k)%x02(k1,k2,k3)/=kk) print *,103,k
end do
kk=kk+1
end do
end do
end do

do k=1,2
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w(3)%v2(k)%x02(k1,k2,k3)=11+kk
if (v1(k)%x02(k1,k2,k3)/=kk) print *,201,k
if (w(3)%v2(k)%x02(k1,k2,k3)/=11+kk) print *,203,k
kk=kk+1
end do
end do
end do

deallocate (w(3)%v2(k)%x02)
if (allocated(w(3)%v2(k)%x02)) print *,301,k
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v1(k)%x02(k1,k2,k3)/=kk) print *,302,k
kk=kk+1
end do
end do
end do


deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k
end do

end
n1=1;n2=2;n3=3
call s1(n1,n2,n3)
call s1(n1,n2,n3)
call s1(n1,n2,n3)
call s1(n1,n2,n3)
print *,'pass'
end
