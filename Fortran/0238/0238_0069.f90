module m1
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
  end type
end
subroutine s1
use m1
type (x0),allocatable::v1(:),v2(:)

allocate( v1 ,source=v2) 

end
print *,'pass'
end
