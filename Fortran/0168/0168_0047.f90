subroutine s1(k,j)
  implicit none
type x
  real:: d1
  real,pointer,contiguous::p(:,:,:)
  real:: d2
end type
  real,target:: t(3,3,1)=reshape([1,2,3,4,5,6,7,8,9],[3,3,1])
  type (x) :: v
integer::n,k,j,it

if (k==1) then
  v%p=> t(:,:,:)
  n=9
else
  n=6
endif
call ss( v%p(:,:,j) ,n) 
if ( it( v%p(:,:,j) ,n)/= 1) print *,201 
end
call s1(1,1)   
print *,'pass'
end

subroutine ss ( z ,n)
real :: z( n )
write(1,*)n,':',z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
end

function   it ( z ,n)
real :: z( n )
write(1,*)n,':',z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
it=1
end
