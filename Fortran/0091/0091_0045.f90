program main
integer*8,parameter::a = 12_8
integer*8,parameter::b = 23_8
integer*8::frout = merge(a,b, .true.)
integer*8::bckout
integer::k = kind(merge(a, b, .true.))
bckout = merge(a,b,.true.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? (Error: I8->I8) ???'
else
print*," I8->I8 OK"
endif


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







      
