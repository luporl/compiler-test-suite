INTEGER::ARR(5)
  FORALL (INTEGER::A=1:5)
        ARR(A)=A
  END FORALL
IF(ANY(ARR /= [1,2,3,4,5]))PRINT*,101
PRINT*,"PASS"
END
