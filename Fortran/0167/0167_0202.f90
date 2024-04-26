module m
  integer(4) :: b(100),a,c(100)
  integer d
  !$omp threadprivate(b)
  equivalence(a,d)
end

use m,x=>b,y=>c

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))
!$omp parallel
addr(omp_get_thread_num()+1) = loc(x)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

call sub
if (a /= 11) print *,3
if (d /= 11) print *,3
if (any(x /= 22)) print *,4
if (any(y /= 33)) print *,5
if (size(x) /= 100) print *,6
if (size(y) /= 100) print *,7
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end
