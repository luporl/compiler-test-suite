module mod
  type ty
private
   integer :: i
  end type
  type(ty) :: x
  interface
   module subroutine sub(a)
   integer :: a(x%i)
   end subroutine
  end interface
end
       
submodule (mod) smod
contains
  module procedure sub
  end
end

print *,'pass'
end
