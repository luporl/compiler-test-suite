integer :: arr(5)

i = 2
arr(2) = 10
arr(3) =  20

associate(aa=>arr(i::2))
i = i+1
IF(aa(1) .EQ. 10 .AND. arr(i) .EQ. 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
end associate
end
