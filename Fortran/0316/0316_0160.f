
      type tag
        integer i(3:10)
      end type
      integer*4,parameter ::i4(2,-10:10)=1
      type(tag),parameter ::t(2+3:10)=tag(1)
      real*8,   parameter ::r8(10:-10)=1.0d+0
      integer*1,parameter ::one=1
      integer*8,parameter ::two=2
      
      integer*4,parameter ::ia=lbound(i4,dim=two)
      integer*4,parameter ::ib=lbound(i4(1:2,0:-9:3),dim=two)
      integer*4,parameter ::ic=lbound(dim=one,array=t)
      integer*4,parameter ::id=lbound(dim=one,array=t(5)%i)
      integer*4,parameter ::ie=lbound(r8,one)

      call check(ia,lbound(i4,dim=two))
      call check(ib,lbound(i4(1:2,0:-9:3),dim=two))
      call check(ic,lbound(dim=one,array=t))
      call check(id,lbound(dim=one,array=t(5)%i))
      call check(ie,lbound(r8,one))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
