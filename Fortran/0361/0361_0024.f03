  implicit none
  print *,"pass"
end program

subroutine sub(p01,p02,p03)
  implicit none
  integer p01,p02,p03
  value :: p01,p03
  p01 = 100
  p02 = 100
  p03 = 100
  return
end subroutine 
