      implicit none
      call test1
      call test2
      call test3
      call test4
      end
      recursive subroutine test1()
      implicit none
      real*4 a,b
      real*8 c,d
      real*8 e,f
      a=1 ; b=2
      c=3 ; d=4
      e=5 ; f=6
      call sub()
      contains 
	recursive subroutine sub()
        namelist /nam/a,b,c,d,e,f
        write(6,nam)
        end subroutine
      end
      recursive subroutine test2()
      implicit none
      integer*1 a,b
      integer*2 c,d
      integer*4 e,f
      a=1 ; b=2
      c=3 ; d=4
      e=5 ; f=6
      call sub()
      contains 
	recursive subroutine sub()
        namelist /nam/a,b,c,d,e,f
        write(6,nam)
        end subroutine
      end
      recursive subroutine test3()
      implicit none
      logical*1 a,b
      logical*4 e,f
      a=.true. ; b=.false.
      e=.true. ; f=.false.
      call sub()
      contains 
	recursive subroutine sub()
        namelist /nam/a,b,e,f
        write(6,nam)
        end subroutine
      end
      recursive subroutine test4()
      implicit none
      complex*8 a,b
      complex*16 e,f
      a=(1,2) ; b=(2,3)
      e=(4,5) ; f=(5,6)
      call sub()
      contains 
	recursive subroutine sub()
        namelist /nam/a,b,e,f
        write(6,nam)
        end subroutine
      end
