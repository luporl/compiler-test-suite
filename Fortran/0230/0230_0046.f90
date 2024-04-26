module m1
  type :: t1
     integer :: x=1
  end type t1
end module m1

module m2
  interface
     subroutine s1(v)
       use m1
       type(t1) :: v
     end subroutine s1
  end interface
end module m2

module mm
 contains
  subroutine wws  (proc)
    use :: m2
    use :: m1
    procedure (s1) :: proc
  end subroutine
end

module m3
    use :: m1
contains
  subroutine sub (proc)
    use :: m2
    procedure (s1) :: proc
  end subroutine sub
end module m3

use m3
print *,'pass'
end program
subroutine sx
use mm
end

