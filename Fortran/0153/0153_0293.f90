module m1
      common /com1/ k,n
pointer ::n(:)
!$omp threadprivate(/com1/)
end
subroutine s1
use m1

allocate(n(2))
!$omp parallel
k=0
n=0
!$omp single
k=1
n=2
!$omp end single copyprivate(n,k   )
if (k/=1) print *,101
if (any(n/=2)) print *,102
!$omp end parallel
end
call s1
print *,'pass'
end
