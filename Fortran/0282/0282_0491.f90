Program Main

integer,dimension(2,3,2,1)::a

integer,parameter, dimension (2,3,2,1) :: b = reshape((/0,-30,-100,-50,4,5,8,-11, &
                                   6,-3,2,-400/), (/2,3,2,1/))

integer,parameter,dimension(3,2,1) :: c = sum(b,dim =1, mask = b> 500)

integer,dimension(3,2,1) :: d

integer::p = kind(sum(b,dim =1, mask = b> 500))

a = reshape((/0,-30,-100,-50,4,5,8,-11,6,-3,2,-400/), (/2,3,2,1/))

d =  sum(a,dim =1, mask = a> 500)
do i = 1,3
do j = 1,2
do k = 1,1
print*, c(i,j,k), '---', d(i,j,k)
if (c(i,j,k).ne.d(i,j,k)) then
print*, '??? (Error: I->I) ???'
else
print*, 'I -> I'

endif
enddo
enddo
enddo

call check(p, kind(sum(a,dim =1,mask = a > 500)))


end


subroutine check(x, y)
integer x, y
print*, x,'--',y
if (x.ne.y) then
print*, '??? (KIND Error:) ???'
else
print*, 'KIND OK '
endif
end subroutine
                     
