MODULE m1
integer,parameter :: n=6
CONTAINS
  SUBROUTINE calc_sub(dd)
    REAL::dd(n)
  END SUBROUTINE
END MODULE


  USE m1
INTERFACE
  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
END INTERFACE

    CALL write_sub(calc_sub)
print *,'pass'
END

  SUBROUTINE write_sub(func)
    INTERFACE
     SUBROUTINE func(dd)
        REAL ::dd(6)
      END SUBROUTINE
    END INTERFACE
  END SUBROUTINE
