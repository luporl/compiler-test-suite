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
type (x0)::v2
end type
type(z),pointer:: v3
type (x0),allocatable::v


allocate(v3)
allocate(v3%v2%x02(2))
v3%v2%x02(1)=1
v3%v2%x02(2)=2

allocate( v ,source=v3%v2) 


end
call s1(2)
print *,'pass'
end
