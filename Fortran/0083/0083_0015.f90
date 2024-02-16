module m21
  implicit none
  integer :: n=1
end
module m22
use m21
  implicit none
end
module m2
use m22
  implicit none
  integer :: nn=10
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
  interface
    module subroutine sub1(a)
      use m2
  implicit none
      integer::a(n) 
    end subroutine
  end interface
  interface
    module subroutine sub2(a)
      use m2
  implicit none
      integer::a(n) 
    end subroutine
  end interface
contains
  module procedure sub
    if (size(a) /= 1) print *,3,size(a)
    call sub1(a)
  end procedure
end

submodule(m:smod)smod2
  integer :: n=100
contains
  module procedure sub1
    if (size(a) /= 1) print *,3,size(a)
    call sub2(a)
  end procedure
end

submodule(m:smod)smod3
  integer :: n=100
contains
  module procedure sub2
    if (size(a) /= 1) print *,3,size(a)
  end procedure
end

use m
      integer::a(2) 
call sub(a)
print *,'pass'
end
