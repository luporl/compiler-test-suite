program main
integer*4,parameter::a = 12_4
integer*4,parameter::b(10) = (/3_4, 4_4, 5_4, 9_4, 4_4, 3_4, 11_4, 8_4, 3_4, 8_4/)
integer*4::c(10) = merge(a,b, .true.)
integer::k = kind(merge(a, b, .true.))
integer::i
integer,dimension(1)::s = shape(merge(a, b, .true.))
integer*4::m(10)
m = merge(a, b, .true.)
print*, 'Shape of Front ', s
print*, 'Shape of Back ', shape(merge(a,b,.true.))
do i=1, 10
print *,c(i), "--",m(i)
if (c(i).ne.m(i)) then
print *,'??? (Error: I4->I4) ???'
else
print*," I4->I4 OK"
endif
enddo

call check1(k,kind(merge(a,b,.true.)))
END


      subroutine check1(x,y)
      integer x,y
      print *,x ,"--", y
      if (x.ne.y) then
        print *,'??? (KIND Error:) ???'
      else
        print*, "KIND OK"
      endif
      end subroutine





      
