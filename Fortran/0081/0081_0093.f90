MODULE m1
integer,parameter :: n=2
CONTAINS
  SUBROUTINE module_procedure(dummy_argument)
    integer,parameter :: n=2
    REAL::dummy_argument(n)
    dummy_argument=1.
  END SUBROUTINE
END MODULE

USE m1

INTERFACE
  SUBROUTINE explict_interface_proc(dummy_proc)
    INTERFACE
     SUBROUTINE dummy_proc(dummy_argument)
        use m1
        REAL ::dummy_argument(n)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

 CALL explict_interface_proc(module_procedure)











print *,'pass'
END

  SUBROUTINE explict_interface_proc(dummy_proc)
    INTERFACE
     SUBROUTINE dummy_proc(dummy_argument)
        use m1
        REAL ::dummy_argument(n)
     END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
