subroutine s1
  implicit none
  real,pointer,contiguous::p(:,:)
  real,target:: t(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])

  p=> t(:,:)
call s( p(:,:) ,9) 
contains
subroutine s(a,n)
real,contiguous:: a(:,:)
integer::n
call ss( a , n)
end subroutine
end
call s1   
print *,'OK'
end
  
subroutine ss ( z ,n)
real :: z( n )
write(1,*)n,':',z
if (any( z/=[1,2,3,4,5,6,7,8,9])) print *,101
end

