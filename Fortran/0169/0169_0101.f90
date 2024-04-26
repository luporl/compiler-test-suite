module m
  integer :: j=2
end

module mm
  interface
    module subroutine sub(a,x)
      use m
      integer :: x(5)
      integer :: a(x(j))
    end subroutine
  end interface
contains
  module procedure sub
    if (size(x) /= 5) print *,101
    if (j /= 2) print *,102
    if (size(a) /= 20) print *,103
  end procedure
end

use mm
integer :: x(5)
integer :: a(20)
x=(/ (i*10,i=1,5) /)
call sub(a,x)
print *,'pass'
end
