program main
  integer*8 ans_umin(100)
  integer*8 value, i

  do i=1,100
     if (mod(i,2) == 0) then
        value = -1
     end if
     value = -2
     ans_umin(i) = 0 - value
  end do

  if (ans_umin(10) == 2 .and. ans_umin(11) == 2) then
     print *,"OK", ans_umin(10), ans_umin(11)
  else
     print *,"NG", ans_umin(10), ans_umin(11)
  end if
end program main

