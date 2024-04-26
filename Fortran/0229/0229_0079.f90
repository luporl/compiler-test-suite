module m1
  type :: t1
     integer :: x
  end type t1
end module m1


module m3
contains
  subroutine sub (proc)
  interface
     subroutine s1(p1)
       use m1
       type(t1) :: p1
     end subroutine s1
  end interface
    procedure (s1) :: proc
  end subroutine sub
end module m3

use m3
print *,'pass'
end program

