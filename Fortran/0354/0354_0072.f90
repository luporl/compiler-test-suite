program main
  real        :: a(10), b(10)
  character*3 :: c(10)
  do i=1,10
     a(i) = real(i)
     b(i) = real(i)
  end do
  c = ifun(a,b)
  print *,c(5)
contains
  elemental function ifun(i,j) result(ia)
    real     :: i,j
    character*3 :: ia
    intent(in)  :: i,j
    if (i .eq. j) then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end program main
