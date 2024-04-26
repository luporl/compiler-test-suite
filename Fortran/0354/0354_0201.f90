program main
  complex*8 :: r_data(10,10)
  integer*8 :: idx(10)
  integer*8 :: i
  
  do i=1,10
     idx(i) = i
  end do
  call sub(r_data, idx, 10_8)
  
  if (real(r_data(5,5)) .eq. 5.0) then
     print *,"OK"
  else
     print *,"NG",r_data(5,5)
  end if
end program main

subroutine sub(r_data, idx, n)
  complex*8 :: r_data(10,10)
  integer*8 :: idx(10)
  integer*8 :: i,j,n

  do i=1,n
     do j=1,n
        r_data(idx(j),i) = cmplx(real(j),1.0)
     end do
  end do
end subroutine sub

