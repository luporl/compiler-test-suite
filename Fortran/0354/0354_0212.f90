program main
  real*4 r_data1(10,10), r_data2(10,10), r_data3(10,10)
  r_data2 = 1.0
  r_data3 = 2.0
  call sub(r_data1, r_data2, r_data3, 10_8)
  if (r_data1(5,5) .eq. 3.0) then
     print *,"OK"
  else
     print *,"NG",r_data1(5,5)
  end if
end program main

subroutine sub(r_data1, r_data2, r_data3, n)
  real*4    :: r_data1(10,10), r_data2(10,10), r_data3(10,10)
  integer*8 :: i,n
  do i=1,n,2
     do j=1,n,2
        r_data1(j,i) = r_data2(j,i) + r_data3(j,i)
     end do
  end do
end subroutine sub

