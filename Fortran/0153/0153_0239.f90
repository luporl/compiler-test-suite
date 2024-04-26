module a1
implicit none
type, abstract::   abs_base
    integer :: ii=0
    contains
        procedure(abs_init),deferred, PASS :: init
        generic::assignment(=)=>init
end type
abstract interface 
    elemental subroutine  abs_init(this,  num)
    import abs_base
    class(abs_base), INTENT(INOUT) :: this
    integer, INTENT(IN) :: num
    end subroutine 
end interface

integer :: ii(2)
integer :: stat=0
end module

module m1
use a1
implicit none
    type, extends(abs_base) ::  ty
      contains
        procedure, PASS :: init 
    end type
contains
    elemental subroutine init(this, num)
        class(ty), INTENT(INOUT) :: this
        integer, INTENT(IN) :: num
        this%ii = num
    end subroutine
end module

module m2
use m1
implicit none
  type ty2
    class(abs_base),pointer :: ty_obj(:)
  end type

  type(ty),target,save :: ty_tgt(2)
contains
    subroutine test()
    use m1
    type(ty2) :: obj

    allocate(ty:: obj%ty_obj(2))

    ii = (/3,8/)
    obj%ty_obj = ii
    stat=1
    call testsub(obj%ty_obj(1),stat)
    stat=2
    call testsub(obj%ty_obj(2),stat)
    print *,'pass'
    end subroutine

    subroutine testsub(d1,d2)
    class(abs_base) :: d1
    integer  :: d2
    select case(d2)
    case(1)
      if(d1%ii/=3) print*,301
    case(2)
      if(d1%ii/=8) print*,302
    end select
    end subroutine
end module

program main
use m2
call test
end program
