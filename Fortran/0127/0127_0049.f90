program main
  type data
     integer*8 array_ref1
     integer*8 array_ref2
     integer*8 array_def
  end type data
  type (data) test_data
  integer*8   i
  
  do i=1,100
     test_data%array_ref1 = i
     test_data%array_ref2 = i+1
  end do

  do i=1,50
     test_data%array_def = test_data%array_ref1 + test_data%array_ref2
  end do

  if (test_data%array_def == 201) then
     print *,"OK"
  else
     print *,"NG",test_data%array_def
  end if
end program main
