integer ::a(100,100)
!$omp parallel do
do i=1,1
do j=1,1
do k=1,1
end do
end do
end do
!$omp end parallel do
print *,'pass'
end
