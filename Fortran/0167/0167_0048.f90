module m
  procedure(integer),pointer :: p
  integer(4) :: a,b,c
  !$omp threadprivate(a,b,c)
end

use m
integer,external :: target

integer(8),allocatable :: addr(:)
integer omp_get_max_threads, omp_get_thread_num
allocate(addr(omp_get_max_threads()))

!$omp parallel
addr(omp_get_thread_num()+1) = loc(a)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
addr(omp_get_thread_num()+1) = loc(b)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

!$omp parallel
addr(omp_get_thread_num()+1) = loc(c)
!$omp end parallel
do i=1,omp_get_max_threads()-1
   if (any(addr(i) == addr(i+1:))) print *,i,addr(i)
end do

p=>target
if (p(34) /= 68) print *,1
call sub
if (a /= 11) print *,3
if (b /= 22) print *,4
if (c /= 33) print *,5
print *,'pass'
end

subroutine sub
  use m
  a=11
  b=22
  c=33
end

function target(a)
  integer a,target
  target=a*2
end function

