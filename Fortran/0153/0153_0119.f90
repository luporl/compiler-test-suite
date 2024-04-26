module m1
type x
  sequence
  integer:: x1
  integer::x2
end type
type (x),pointer:: n1(:),n2(:)
common /cmn/ n1,n2
!$omp threadprivate(/cmn/)
end
subroutine s1(n)
use m1
integer omp_get_thread_num
do k=1,n
allocate(n1(k+1),n2(k+1))
do kk=1,k+1
n1(kk)%x1=omp_get_thread_num()+1
n1(kk)%x2=omp_get_thread_num()+11
n2(kk)%x1=omp_get_thread_num()+2
n2(kk)%x2=omp_get_thread_num()+12
end do
end do
end
subroutine s2(n)
use m1
integer omp_get_thread_num
do k=1,n
do kk=1,k+1
if ((n1(kk)%x1/=omp_get_thread_num()+1)) print *,101
if ((n1(kk)%x2/=omp_get_thread_num()+11)) print *,111
if ((n2(kk)%x1/=omp_get_thread_num()+2)) print *,102
if ((n2(kk)%x2/=omp_get_thread_num()+12)) print *,112
end do
end do
end
!$omp parallel
call s1(1)
call s2(1)
!$omp end parallel
print *,'pass'
end
