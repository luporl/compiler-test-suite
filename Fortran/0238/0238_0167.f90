module m1
  type x0
     integer:: x10(100) 
     integer,allocatable:: x92(:,:,:)
     integer:: x11 
     integer,allocatable:: x12(:)
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1(n)
use m1
type (x0),allocatable::v1(:)
type (x0)::v2(n)


do k=1,n
allocate(v2(k)%x02(2))
v2(k)%x02(1)=1+k
v2(k)%x02(2)=2+k
allocate(v2(k)%x92(2,2,2))
v2(k)%x92(1,1,1)=-(1+k)
v2(k)%x92(2,2,2)=-(2+k)
end do

allocate( v1 ,source=v2) 

do k=1,n
if (v1(k)%x02(1)/=1+k) print *,101,k
if (v1(k)%x02(2)/=2+k) print *,102,k
if (v2(k)%x02(1)/=1+k) print *,103,k
if (v2(k)%x02(2)/=2+k) print *,104,K
if (v1(k)%x92(1,1,1)/=-(1+k)) print *,101,k
if (v1(k)%x92(2,2,2)/=-(2+k)) print *,102,k
if (v2(k)%x92(1,1,1)/=-(1+k)) print *,103,k
if (v2(k)%x92(2,2,2)/=-(2+k)) print *,104,K
end do

do k=1,n
v2(k)%x02(1)=11+k
v2(k)%x02(2)=12+k
if (v1(k)%x02(1)/=1+k) print *,201,k
if (v1(k)%x02(2)/=2+k) print *,202,k
if (v2(k)%x02(1)/=11+k) print *,203,k
if (v2(k)%x02(2)/=12+k) print *,204,k
v2(k)%x92(1,1,1)=-(11+k)
v2(k)%x92(2,2,2)=-(12+k)
if (v1(k)%x92(1,1,1)/=-(1+k)) print *,201,k
if (v1(k)%x92(2,2,2)/=-(2+k)) print *,202,k
if (v2(k)%x92(1,1,1)/=-(11+k)) print *,203,k
if (v2(k)%x92(2,2,2)/=-(12+k)) print *,204,k

deallocate (v2(k)%x02)
if (allocated(v2(k)%x02)) print *,301,k
if (v1(k)%x02(1)/=1+k) print *,302,k
if (v1(k)%x02(2)/=2+k) print *,303,k
if (v1(k)%x92(1,1,1)/=-(1+k)) print *,302,k
if (v1(k)%x92(2,2,2)/=-(2+k)) print *,303,k


deallocate (v1(k)%x02)
if (allocated(v1(k)%x02)) print *,401,k

if (allocated(v1(k)%x12)) print *,501,k
if (allocated(v2(k)%x12)) print *,601,k
end do

end
call s1(2)
call s1(2)
call s1(2)
call s1(2)
print *,'pass'
end
