program main
  integer*8 :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: idx(100)
  integer*8 :: i

  r_data2 = 1
  r_data3 = 2
  do i=1,100
     idx(i) = i
  end do
  call sub(r_data1, r_data2, r_data3, idx, 100_8)
  
  if (r_data1(50) .eq. 3) then
     print *,"OK"
  else
     print *,"NG",r_data1(50)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, idx, n)
  integer*8 :: r_data1(100), r_data2(100), r_data3(100)
  integer*8 :: idx(100)
  integer*8 :: i,n
  
  do i=1,n
     r_data1(idx(i)) = r_data2(idx(i)) + r_data3(idx(i))
  end do
end subroutine sub

