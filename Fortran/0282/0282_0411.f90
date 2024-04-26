program main

integer,parameter, dimension (2,3) :: a = reshape((/1,2,3,4,5,6/), (/2,3/))

integer,dimension(2,3) :: b

integer, dimension(2) :: d

integer,parameter, dimension(2) :: c = product( ARRAY = a , DIM = 2 , MASK  = a > 1)

integer::k= kind(product( ARRAY = a , DIM = 2 , MASK  = a > 1))


b = reshape((/1,2,3,4,5,6/), (/2,3/))

d = product( ARRAY = b , DIM = 2 , MASK  = b > 1)

do i = 1,2


print *,c(i) ,"--",d(i)

if (c(i).NE.d(i)) then

 print *,'??? (Error: integer->integer) ???'

else

 print*, "integer->integer OK"

endif



end do

call check(k,kind(product( ARRAY = b , DIM = 2 , MASK  = b > 1)))

end


  subroutine check(x,y)
  integer x,y
  print *,"KIND::",x ,"--", "KIND::",y
  if (x.ne.y) then
  print *,'??? (KIND Error:) ???'
  else
  print*, "KIND OK"
  endif
  end subroutine
