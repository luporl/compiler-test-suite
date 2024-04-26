MODULE mod1
IMPLICIT NONE

  TYPE t1
    INTEGER :: arr(10)
  END TYPE

  TYPE t2
    INTEGER :: i
    TYPE(t1) :: tt_1(1,3)
  END TYPE

  TYPE t3
    TYPE(t2) :: tt_2(2,3)
  END TYPE

  TYPE t4
    INTEGER :: j
    TYPE(t3) :: tt_3
  END TYPE

  TYPE t5
    TYPE(t4) :: tt_4(3,3)
  END TYPE

  TYPE t6
    TYPE(t5) :: tt_5(2)
  END TYPE

  TYPE t7
    INTEGER :: k(3)
    TYPE(t6) :: tt_6
  END TYPE

  TYPE t8
    TYPE(t7) :: tt_7
  END TYPE

END MODULE

PROGRAM main

USE mod1
IMPLICIT NONE

TYPE(t8) :: ob_8
TYPE(t4) :: ob_4
TYPE(t2) :: ob_2

ob_4%j = 3
ob_2%i = 2

ob_8%tt_7%tt_6%tt_5(2)%tt_4(3,2)%tt_3%tt_2(1,1)%tt_1(1,3)%arr = 0

ASSOCIATE(b => ob_8%tt_7%tt_6%tt_5(2)%tt_4)
  b(ob_4%j,ob_2%i)%tt_3%tt_2(1,1)%tt_1(1,3)%arr(ob_2%i:ob_4%j) = 1
END ASSOCIATE

IF(ALL(ob_8%tt_7%tt_6%tt_5(2)%tt_4(3,2)%tt_3%tt_2(1,1)%tt_1(1,3)%arr(2:3) == 1)) THEN
  ob_8%tt_7%tt_6%tt_5(2)%tt_4(3,2)%tt_3%tt_2(1,1)%tt_1(1,3)%arr(2:3) = 0
ELSE
  ob_8%tt_7%tt_6%tt_5(2)%tt_4(3,2)%tt_3%tt_2(1,1)%tt_1(1,3)%arr(2:3) = 1
END IF

IF(ALL(ob_8%tt_7%tt_6%tt_5(2)%tt_4(3,2)%tt_3%tt_2(1,1)%tt_1(1,3)%arr == 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
