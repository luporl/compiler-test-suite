module m1
type x
  sequence
  integer:: x1
  integer::x2
end type
type (x):: n1(2),n2(2)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
end
subroutine s1
use m1
integer omp_get_thread_num
n1%x1=omp_get_thread_num()+1
n1%x2=omp_get_thread_num()+11
n2%x1=omp_get_thread_num()+2
n2%x2=omp_get_thread_num()+12
end
subroutine s2
use m1
integer omp_get_thread_num
if (any(n1%x1/=omp_get_thread_num()+1)) print *,101
if (any(n1%x2/=omp_get_thread_num()+11)) print *,111
if (any(n2%x1/=omp_get_thread_num()+2)) print *,102
if (any(n2%x2/=omp_get_thread_num()+12)) print *,112
end
!$omp parallel
call s1
call s2
!$omp end parallel
print *,'pass'
end
