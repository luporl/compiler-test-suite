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
type(y)::v11
type z
integer::y1(10)
type (x0),allocatable::v2(:)
end type
type(z),pointer::w

allocate(w)
allocate(w%v2(3))
do k=1,3,2
allocate(w%v2(k)%x02(n1,n2,n3))
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w%v2(k)%x02(k1,k2,k3)=kk
kk=kk+1
end do
end do
end do
end do

allocate( v11%v1 ,source=w%v2(n1:n3:n2) )

kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
do k=1,3,2
if (k==3) then
if (v11%v1(2)%x02(k1,k2,k3)/=kk) print *,101,k
else
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,101,k
endif
if (w%v2(k)%x02(k1,k2,k3)/=kk) print *,103,k
end do
kk=kk+1
end do
end do
end do

do k=1,3,2
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
w%v2(k)%x02(k1,k2,k3)=11+kk
if (k==3) then
if (v11%v1(2)%x02(k1,k2,k3)/=kk) print *,201,k
else
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,201,k
endif
if (w%v2(k)%x02(k1,k2,k3)/=11+kk) print *,203,k
kk=kk+1
end do
end do
end do

deallocate (w%v2(k)%x02)
if (allocated(w%v2(k)%x02)) print *,301,k
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (k==3) then
if (v11%v1(2)%x02(k1,k2,k3)/=kk) print *,302,k
else
if (v11%v1(k)%x02(k1,k2,k3)/=kk) print *,302,k
endif
kk=kk+1
end do
end do
end do


if (k==3) then
deallocate (v11%v1(2)%x02)
if (allocated(v11%v1(2)%x02)) print *,401,k
else
deallocate (v11%v1(k)%x02)
if (allocated(v11%v1(k)%x02)) print *,401,k
endif
end do

end
call s1(1,2,3)
print *,'pass'
end
