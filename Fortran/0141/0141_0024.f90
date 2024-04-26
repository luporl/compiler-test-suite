module m1
  integer(8)::k1
end

subroutine s1
use m1
integer,save::n
write(1, '("s1 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s1 in doconcurrent n=",z16.16)')loc(n)
!$omp task shared(n)
if (k1/=loc(n)) print *,100001
write(1,'("s1 task shared in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,10001
!$omp end task
end do
end

subroutine s2
use m1
integer,save::n
write(1,'("s2 n=",z16.16)')loc(n)
do concurrent(n=1:1)
write(1,'("s2 in doconcurrent n=",z16.16)')loc(n)
k1=loc(n)
!$omp task default(private) shared(k1)
write(1,'("s2 task private in doconcurrent n=",z16.16)')loc(n)
if (k1==loc(n)) print *,200001
!$omp end task
end do
end

subroutine s3
use m1
integer,save::n
write(1,'("s3 n=",z16.16)')loc(n)
do concurrent(n=1:1)
write(1,'("s3 in doconcurrent n=",z16.16)')loc(n)
k1=loc(n)
!$omp task default(firstprivate)
write(1,'("s3 task firstprivate in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,30001 
if (k1==loc(n)) print *,300001
!$omp end task
end do
end

subroutine s7
use m1
integer,save::n
write(1,'("s7 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s7 in doconcurrent n=",z16.16)')loc(n)

!$omp task default(shared)
write(1,'("s3 task shared in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,7001
if (k1/=loc(n)) print *,700001
!$omp end task
end do
end

subroutine s4
use m1
integer,save::n
write(1,'("s4 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s4 in doconcurrent n=",z16.16)')loc(n)
!$omp parallel default(private) shared(k1)
if (k1==loc(n)) print *,400001
write(1,'("s4 parallel default(private) in doconcurrent n=",z16.16)')loc(n)
!$omp end parallel
end do
end

subroutine s5
use m1
integer,save::n
write(1,'("s5 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s5 in doconcurrent n=",z16.16)')loc(n)
!$omp parallel default(firstprivate)
write(1,'("s5 parallel default(firstprivate) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,5001
if (k1==loc(n)) print *,500001
!$omp end parallel
end do
end

subroutine s6
use m1
integer,save::n
write(1,'("s6 n=",z16.16)')loc(n)
do concurrent(n=1:1)
k1=loc(n)
write(1,'("s6 in doconcurrent n=",z16.16)')loc(n)

!$omp parallel default(shared)
write(1,'("s6 parallel default(share) in doconcurrent n=",z16.16)')loc(n)
  if (n/=1) print *,6001
if (k1/=loc(n)) print *,600001
!$omp end parallel
end do
end

call omp_set_num_threads(1)
call s1
call s2
call s3
call s7
call s4
call s5
call s6
print *,'pass'
end

