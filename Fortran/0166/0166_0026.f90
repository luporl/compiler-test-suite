subroutine s1
complex a(10),b(10)
b=1
n=10
!$omp do
do i=1,n
do j=1,n
a(i)=b(i)
!$omp paralleldo
do k=1,n
enddo
enddo
enddo
end
subroutine s2
integer a(10),b(10)
b=1
n=10
!$omp do
do i=1,n
!$omp paralleldo
do k=1,n
enddo
do j=1,n
a(i)=b(i)
enddo
enddo
end
subroutine s3
integer a(10),b(10)
b=1
n=10
!$omp do
do i=1,n
do j=1,n
!$omp paralleldo
do k=1,n
enddo
a(i)=b(i)
enddo
enddo
end
print *,'pass'
end
