MODULE m1
integer,parameter :: n=2
CONTAINS
  SUBROUTINE module_procedure(dummy_argument)
    REAL::dummy_argument(n)
    dummy_argument=1.
  END SUBROUTINE
END MODULE

module m2
use m1
INTERFACE
  SUBROUTINE explict_interface_proc(dummy_proc)
    import      module_procedure
    procedure(module_procedure),intent(in),pointer::dummy_proc
  END SUBROUTINE
END INTERFACE
end

USE m2


 CALL explict_interface_proc(module_procedure)











print *,'pass'
END

  SUBROUTINE explict_interface_proc(dummy_proc)
    use m1,only: module_procedure,n
    procedure(module_procedure),intent(in),pointer::dummy_proc
    REAL::x(n) 
    call dummy_proc(x)
    if (any(x/=1)) print *,801
  END SUBROUTINE
