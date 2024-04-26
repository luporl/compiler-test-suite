module m1
  integer(4) :: a
  integer(4) :: b(100),c(100)
  !$omp threadprivate(b)
end

module m2
  use m1,x=>a,y=>b,z=>c
end

use m2,a=>x,b=>y,c=>z

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))
!$omp parallel
addr(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

call sub
if (a /= 11) print *,4
if (any(b /= 22)) print *,4
if (any(c /= 33)) print *,4
if (size(b) /= 100) print *,6
if (size(c) /= 100) print *,6
print *,'pass'
end

subroutine sub
  use m1
  a=11
  b=22
  c=33
end
