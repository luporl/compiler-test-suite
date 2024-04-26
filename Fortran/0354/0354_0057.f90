program main
  real :: a(10,10)
  real :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = real(j)
     end do
  end do
  b = ifun(a)
  if (b(5,5) .eq. 5) then
     print *,"OK"
  else
     print *,"NG",b(5,5)
  end if
contains
  elemental function ifun(i) result(ia)
    real :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
