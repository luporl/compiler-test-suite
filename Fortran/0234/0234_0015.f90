 module mod0
    implicit none
    type, abstract :: mod0_t
      integer :: x
    contains
      generic, public :: add => add_integer
      procedure(add_integer_i), deferred, public :: add_integer
    end type mod0_t
    abstract interface
      subroutine add_integer_i(self)
        import mod0_t
        implicit none
        class(mod0_t) :: self
      end subroutine add_integer_i
    end interface
  end module mod0

  module mod1
    implicit none
    type, abstract  :: mod1_t
    contains
      procedure, public :: add_integer
    end type mod1_t
  contains
    subroutine add_integer(self)
      class(mod1_t)    :: self
    end subroutine add_integer
  end module mod1

  module mod2
    implicit none
  contains
    subroutine not_userd(obj)
      use mod1
      implicit none
      class(mod1_t), intent(inout)    :: obj
    end subroutine not_userd
  end module mod2

  module mod3
    implicit none
  contains
    subroutine failsub(obj)
      use mod2
      use mod1
      implicit none
    class(mod1_t), intent(inout) :: obj
    end subroutine failsub
  end module mod3

print *,'pass'
end
