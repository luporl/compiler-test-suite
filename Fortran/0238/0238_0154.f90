module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:,:,:)
     integer,allocatable:: x12(:,:,:)
     integer,allocatable:: x22(:,:,:)
  end type
end
subroutine s1(n1,n2,n3)
use m1
type (x0),allocatable::v1(:),v2(:,:,:)

allocate(v2(n1,n2,n3))
do k=1,2
allocate(v2(n1,k,n3)%x02(n1,n2,n3))
end do
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
v2(n1,1,n3)%x02(k1,k2,k3)=kk
v2(n1,2,n3)%x02(k1,k2,k3)=kk*2
kk=kk+1
end do
end do
end do

allocate( v1(n2) ,source=v2(n1,n2,n3)) 

kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v1(1)%x02(k1,k2,k3)/=kk*2) print *,101,kk
if (v1(2)%x02(k1,k2,k3)/=kk*2) print *,102,kk
if (v2(n1,1,n3)%x02(k1,k2,k3)/=kk) print *,103,k
if (v2(n1,2,n3)%x02(k1,k2,k3)/=kk*2) print *,104,k
kk=kk+1
end do
end do
end do

do k=1,2
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
v2(n1,1,n3)%x02(k1,k2,k3)=kk*4
v2(n1,2,n3)%x02(k1,k2,k3)=kk*8
if (v1(1)%x02(k1,k2,k3)/=kk*2) print *,201,k
if (v1(2)%x02(k1,k2,k3)/=kk*2) print *,202,k
if (v2(n1,1,n3)%x02(k1,k2,k3)/=kk*4) print *,203,k
if (v2(n1,2,n3)%x02(k1,k2,k3)/=kk*8) print *,204,k
kk=kk+1
end do
end do
end do

end do

deallocate (v2(n1,1,n3)%x02)
deallocate (v2(n1,2,n3)%x02)
if (allocated(v2(n1,1,n3)%x02)) print *,301,k
if (allocated(v2(n1,2,n3)%x02)) print *,302,k
if (allocated(v2(n1,1,n3)%x12)) print *,301,k
if (allocated(v2(n1,2,n3)%x12)) print *,302,k
if (allocated(v2(n1,1,n3)%x22)) print *,301,k
if (allocated(v2(n1,2,n3)%x22)) print *,302,k
kk=1
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (v1(1)%x02(k1,k2,k3)/=kk*2) print *,304,k
if (v1(2)%x02(k1,k2,k3)/=kk*2) print *,305,k
kk=kk+1
end do
end do
end do


do k=1,2
deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k
if (allocated(v1(k)%x12)) print *,401,k
if (allocated(v1(k)%x22)) print *,401,k
end do

end
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
call s1(1,2,3)
print *,'pass'
end
