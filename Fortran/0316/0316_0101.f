
      real*4   ,parameter::  r4=0.0
      real*8   ,parameter::  r8=0.0
      real*16  ,parameter:: r16=0.0
      real*4   ,parameter::  r4a(10)=0.0
      real*8   ,parameter::  r8a(10)=0.0
      real*16  ,parameter:: r16a(10)=0.0
      real*4     r4v
      real*8     r8v
      real*16   r16v

      integer,parameter ::ia=maxexponent(r4)
      integer,parameter ::ib=maxexponent(r8)
      integer,parameter ::ic=maxexponent(r16)
      integer,parameter ::id=maxexponent(r4a)
      integer,parameter ::ie=maxexponent(r8a)
      integer,parameter ::if=maxexponent(r16a)
      integer,parameter ::ig=maxexponent(r4v)
      integer,parameter ::ih=maxexponent(r8v)
      integer,parameter ::ii=maxexponent(r16v)

      call checki4(ia,maxexponent(r4))
      call checki4(ib,maxexponent(r8))
      call checki4(ic,maxexponent(r16))
      call checki4(id,maxexponent(r4a))
      call checki4(ie,maxexponent(r8a))
      call checki4(if,maxexponent(r16a))
      call checki4(ig,maxexponent(r4v))
      call checki4(ih,maxexponent(r8v))
      call checki4(ii,maxexponent(r16v))

      print *,'*** ok ***'
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 1
      endif
      end
