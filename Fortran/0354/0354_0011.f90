module mod
contains
  elemental function ifun(i,j) result(ia)
    real    :: ia
    integer :: i,j
    intent(in) :: i,j
    ia=i/j
  end function ifun
end module mod

program main
  use mod
  integer :: a(10,10)
  integer :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = i + j
        b(j,i) = i + j
     end do
  end do
  b = ifun(a,b)
  print *,b(5,5)
end program main
