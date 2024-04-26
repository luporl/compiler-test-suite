module mod_check
  type data
    integer arr(10)
  end type
contains
  function ext_check(Parr)
    integer ,intent(in) :: Parr(10)
    logical :: ext_check   
    logical :: ret
    if (all(Parr == (/1,2,3,4,5,6,7,8,9,10/))) then
      ret = .false.
    else
      ret = .true.
    end if
    ext_check = ret
  end function
end module

  use,non_intrinsic:: mod_check
  type(data) :: dat
  integer :: iy
  external :: sub

  do i=1,10
    dat%arr(i) = i
  end do
  if (ext_check(dat%arr)) stop "NG 01"

  print *, "pass"
end program

subroutine sub
  print *,"NG 02"
end
