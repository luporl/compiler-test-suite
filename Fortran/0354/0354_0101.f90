module mod
  contains
  elemental function ifun(i,j) result(ia)
    character*3 :: ia
    complex     :: i,j
    intent(in)  :: i,j
    if (real(i) .eq. real(j)) then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end module mod

program main
  use mod
  complex     :: a(10), b(10)
  character*3 :: c(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i))
     b(i) = cmplx(real(i),real(i)) 
  end do
  c = ifun(a,b)
  print *,c(5)
end program main
