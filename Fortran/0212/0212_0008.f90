integer ::a(100,100)
!$omp parallel 
!$omp do simd collapse(2)
do i=1,1
do j=1,1
end do
end do
!$omp end do simd
!$omp end parallel
print *,'pass'
end
