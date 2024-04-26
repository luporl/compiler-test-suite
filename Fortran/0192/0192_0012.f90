MODULE mod1
  TYPE ty
    integer :: ii = 10
    CONTAINS
      FINAL::destructor
  END TYPE ty

  type :: ty0
  type(ty):: arr(2)
  end type

  CONTAINS
    SUBROUTINE destructor( dmy )
      TYPE(ty), INTENT(INOUT):: dmy(1)
      print*, "destructor called !!!"
    END SUBROUTINE
END MODULE mod1

PROGRAM main
  USE mod1
  integer:: i
 forall (i = 1:9)
  ii= f1(ty0([ty(10), ty(10)]))
 end forall
 if(ii /= 10)  print*, 101
 print*, "PASS"

contains
pure function f1(d1)
type(ty0), INTENT(IN)::d1
integer :: f1
f1=10
end function
END PROGRAM
