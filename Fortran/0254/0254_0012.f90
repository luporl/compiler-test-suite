  INTEGER :: a(4)
  integer:: b
  a(1)=17
  a(2)=18
  a(3)=19
  a(4)=20
  b = IALL(array=a,dim=1)
  if(b.ne.16)print*,101
  print*,"pass"
END PROGRAM
