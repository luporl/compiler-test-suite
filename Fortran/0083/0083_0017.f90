module m2
  implicit none
  integer :: n=1
end



module m
  implicit none
  integer :: n=100
  interface
    module subroutine sub(a)
      use m2
  implicit none
      integer::a(n) 
    end subroutine
  end interface
end

submodule(m)smod
  integer :: n=100
contains
  module procedure sub
    if (size(a) /= 1) print *,3,size(a)
  end procedure
end

use m
      integer::a(2) 
call sub(a)
print *,'pass'
end
