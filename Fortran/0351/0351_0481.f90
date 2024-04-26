subroutine sub(a, z)
  integer*4,dimension(1:10) :: a
  real*8,dimension(1:10)    :: z
  
  do i = 1, 10
     z(i) = real(ibits(a(i), 5, 1))
  end do
end subroutine sub

program main
  integer*4,dimension(1:10) :: a = 42_4
  real*8,dimension(1:10)    :: z = 0.0
  
  call sub(a, z)
  
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        write(6, *) 'OK'
     else
        write(6, *) 'NG'
     end if
  end do
end program main
