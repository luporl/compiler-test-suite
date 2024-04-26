module xxxf
  use iso_c_binding
  implicit none

  public

contains

  type(c_funptr) function kmr_fixfun() result(zz) bind(c)
       zz = c_null_funptr
  end function kmr_fixfun

  integer(c_int) function foo() result(zz)
    type(c_funptr) :: fp

    fp = kmr_fixfun()

    zz = 0
  end function foo

end module xxxf
use xxxf
if (foo()/=0) print *,'202'
print *,'pass'
end
