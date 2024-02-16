program main
  real*4, dimension(10) :: fa = (/ 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0 /)
  real*4, dimension(10) :: fb = (/ 10.0, 9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0 /)
  real*4, dimension(10) :: fc = (/ 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0, 1.0, -1.0 /)
  real*4, dimension(10) :: fd
  real*8, dimension(10) :: da = (/ 1.0d0,2.0d0,3.0d0,4.0d0,5.0d0,6.0d0,7.0d0,8.0d0,9.0d0,10.0d0 /)
  real*8, dimension(10) :: db = (/ 10.0d0,9.0d0,8.0d0,7.0d0,6.0d0,5.0d0,4.0d0,3.0d0,2.0d0,1.0d0 /)
  real*8, dimension(10) :: dc = (/ 1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0,1.0d0,-1.0d0 /)
  real*8, dimension(10) :: dd
  
  fd = 0.0
  dd = 0.0
  call test_basic_add_r4(fa, fb, fc, fd, 10)
  call test_basic_add_r8(da, db, dc, dd, 10)
  
  write(*,*) 'fd =', fd
  write(*,*) 'dd =', dd
end program main

subroutine test_basic_add_r4(a, b, c, d, n)
  integer :: n
  real*4, dimension(n) :: a, b, c, d
  integer :: i,j,k,l
  
  do j=1, n-1, 2
    do k=1, n-1, 2
      a(k) = b(k) + c(k)
      a(k+1) = b(k+1) + c(k+1)
      do i=1, n-1, 2
        d(i) = (a(i) + b(i)) * c(i)
        d(i+1) = a(i+1) * c(i+1)
      end do
      do l=1, n-1, 2
        d(l) = (a(l) + b(l)) * c(l)
        d(l+1) = a(l+1) * c(l+1)
      end do
    end do
  end do
end subroutine test_basic_add_r4

subroutine test_basic_add_r8(a, b, c, d, n)
  integer :: n
  real*8, dimension(n) :: a, b, c, d
  integer :: i
  
  do i=1, n-1, 2
     d(i) = (a(i) + b(i)) * c(i)
     d(i+1) = a(i+1) * c(i+1)
  end do
end subroutine test_basic_add_r8
