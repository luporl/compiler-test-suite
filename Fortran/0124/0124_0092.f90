!

program main
integer,dimension(1:1000)::ra,y,x
integer inx1,inx2,scale,m,n
call ini_sub(inx1,inx2,scale,m,n,ra,y,x)
call exe_sub(inx1,inx2,scale,m,n,ra,y,x)
call prt_sub(ra,y)
end

subroutine ini_sub(inx1,inx2,scale,m,n,ra,y,x)
integer,dimension(1:1000)::ra,y,x
integer inx1,inx2,scale,m,n
  inx1  =  3
  inx2  =  1
  scale =  2
  m     =100
  n     =  5
  ra    =  2
  y     =  2
  x     = (/(mod(i,n),i=1,1000)/)
end


!
subroutine exe_sub(inx1,inx2,scale,m,n,ra,y,x)
integer inx1,inx2,scale,m,n
integer,dimension(1:1000) :: ra,y,x
do i=3,m
  ib1 = (i-1)*inx1*2 - 2
  ib2 = (i-1)*inx1*2 - 1
  do ii=1,n
    ir1 = ib1 - (ii-1)*2*inx2
    ir2 = ib2 - (ii-1)*2*inx2
    ra(ii)=x(ir1)
    ra(ii+n)=x(ir2)
  enddo
  call sub2(ra,n)
  do ii=1,n
    ir1 = ib1 - (ii-1)*2*inx2
    ir2 = ib1 - (ii-1)*2*inx2
    y(ir1) = scale*ra(ii)
    y(ir2) = scale*ra(ii+n)
  enddo
enddo
end

subroutine prt_sub(ra,y)
integer,dimension(1:1000) :: ra,y
print *,maxval(ra+y)
end

subroutine sub2(ra,n)
integer,dimension(1:1000) :: ra
integer n
where (ra>n)
  ra = 1
endwhere
end
