module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type  y0
     integer:: x01 
type (x0),allocatable::v1
end type
type (x0),allocatable::v1
type(y0):: v11
type  y1
     integer:: x01 
type (x0),allocatable::v2
end type
type(y1):: v3

allocate(v3%v2)
allocate(v3%v2%x02(2))
v3%v2%x02(1)=1
v3%v2%x02(2)=2

allocate( v1 ,source=v3%v2) 

if (v1%x02(1)/=1) print *,101
if (v1%x02(2)/=2) print *,102
if (v3%v2%x02(1)/=1) print *,103
if (v3%v2%x02(2)/=2) print *,104

v3%v2%x02(1)=11
v3%v2%x02(2)=12
if (v1%x02(1)/=1) print *,201
if (v1%x02(2)/=2) print *,202
if (v3%v2%x02(1)/=11) print *,203
if (v3%v2%x02(2)/=12) print *,204

deallocate (v3%v2%x02)
if (allocated(v3%v2%x02)) print *,301
if (v1%x02(1)/=1) print *,302
if (v1%x02(2)/=2) print *,303

deallocate (v1%x02)
if (allocated(v1%x02)) print *,401

end
call s1
print *,'pass'
end
