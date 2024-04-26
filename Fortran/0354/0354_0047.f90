module mod
contains
  elemental function ifun(i) result(ia)
    real     :: i
    integer  :: ia
    intent(in) :: i
    ia=int(i)
  end function ifun
end module mod

program main
  use mod
  real    :: a(10)
  integer :: b(10)
  a=(/1.1,2.1,3.1,4.1,5.1,6.1,7.1,8.1,9.1,10.1/)
  b = ifun(a)
  print *,b
end program main
