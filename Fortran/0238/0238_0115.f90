module m1
  type x0
     integer(8):: x11 
     integer(8):: x12 
     integer,allocatable:: x02
  end type
end
subroutine s1(n)
use m1
type y
integer::v0
type (x0),allocatable::v1
end type
type (y),allocatable:: v11(:)
type z
integer::v0(50)
type (x0),allocatable::v2
end type
type(z),allocatable::w(:)

allocate(w(3))
allocate(v11(n))
allocate(w(3)%v2)
allocate(w(3)%v2%x02)
w(3)%v2%x02=1

allocate( v11(n)%v1 ,source=w(3)%v2) 

if (v11(n)%v1%x02/=1) print *,101
if (w(3)%v2%x02/=1) print *,103

w(3)%v2%x02=11
if (v11(n)%v1%x02/=1) print *,201
if (w(3)%v2%x02/=11) print *,203

deallocate (w(3)%v2%x02)
if (allocated(w(3)%v2%x02)) print *,301
if (v11(n)%v1%x02/=1) print *,302


deallocate (v11(n)%v1%x02)
if (allocated(v11(n)%v1%x02)) print *,401

end
call s1(3)
print *,'pass'
end
