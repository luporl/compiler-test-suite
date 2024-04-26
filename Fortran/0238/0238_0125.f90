module m1
  type x0
     integer:: x01 (4)
     integer,allocatable:: x02(:)
  end type
end
subroutine s1(n)
use m1
type y
integer::v0
type (x0),allocatable::v1(:)
end type
type(y):: v11
type z
integer::v0
type (x0)::v2(2)
end type
type(z),pointer:: v3


allocate(v3)
do k=1,n
allocate(v3%v2(k)%x02(2))
v3%v2(k)%x02(1)=1+k
v3%v2(k)%x02(2)=2+k
end do

allocate( v11%v1 ,source=v3%v2) 

if (any(shape(v11%v1)/=2)) print *,501
if (any(shape(v11%v1(1)%x02)/=2)) print *,502
if (any(shape(v11%v1(2)%x02)/=2)) print *,503

do k=1,n
if (v11%v1(k)%x02(1)/=1+k) print *,101,k
if (v11%v1(k)%x02(2)/=2+k) print *,102,k
if (v3%v2(k)%x02(1)/=1+k) print *,103,k
if (v3%v2(k)%x02(2)/=2+k) print *,104,K
end do

do k=1,n
v3%v2(k)%x02(1)=11+k
v3%v2(k)%x02(2)=12+k
if (v11%v1(k)%x02(1)/=1+k) print *,201,k
if (v11%v1(k)%x02(2)/=2+k) print *,202,k
if (v3%v2(k)%x02(1)/=11+k) print *,203,k
if (v3%v2(k)%x02(2)/=12+k) print *,204,k

deallocate (v3%v2(k)%x02)
if (allocated(v3%v2(k)%x02)) print *,301,k
if (v11%v1(k)%x02(1)/=1+k) print *,302,k
if (v11%v1(k)%x02(2)/=2+k) print *,303,k


deallocate (v11%v1(k)%x02)
if (allocated(v11%v1(k)%x02)) print *,401,k
end do

end
call s1(2)
print *,'pass'
end
