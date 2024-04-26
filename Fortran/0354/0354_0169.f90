module data
  integer :: module_i
end module data

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
    use data
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
