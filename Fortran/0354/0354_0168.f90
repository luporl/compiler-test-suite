program main
  integer :: a(10)
  integer :: b(10)
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b = ifun(a)

  do i=1,10
     if (a(i) .ne. b(i)) then
        print *,"NG",i
        stop
     endif
  end do
  print *,"OK"
contains
  elemental impure function ifun(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
    print '(I10)',ia
  end function ifun
end program main
