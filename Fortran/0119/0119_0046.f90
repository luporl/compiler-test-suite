program main
  integer(kind=8) i
  integer(kind=4) array1(20),array2(20),ans(20)
  array1 = 3
  array2 = 1
  do i=1,20
     ans(i) = ieor(array1(i), array2(i))
  end do
  if (ans(3) == 2) then
     print *,"OK"
  else
     print *,"NG"
  end if
end program main
