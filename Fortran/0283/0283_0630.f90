character(len = 5) :: chr(5,5)

i = 2
j = 2
chr(2,2) = 'aaaaa'
chr(3,3) = 'bbbbb'

associate(aa=>chr(i,int(j))(i:int(j)+2))
i = i+1
j = j+1
if(aa .EQ. 'aaa') then
  print*,'pass'
else
  print*,101
end if
end associate
end
