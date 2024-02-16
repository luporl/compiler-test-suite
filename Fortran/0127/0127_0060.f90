module data
  integer*8 array_def(100), array_ref1(100), array_ref2(100)
end module data

program main
  use data
  integer*8 i
  
  do i=1,100
     array_ref1(i) = i
     array_ref2(i) = i+1
  end do
  
  do i=1,50
     if (array_ref1(1) > 0) then
        array_def(i) = array_ref1(1) + array_ref2(i)
     else
        array_def(i) = 0
     end if
     array_ref1(1) = array_ref2(i)
  end do

  if (array_def(10) == 21) then
     print *,"OK"
  else
     print *,"NG",array_def(10)
  end if
end program main
