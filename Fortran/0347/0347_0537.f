      real*4 a(10)
      integer*4 imin
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data   imin/1/
      do 11 i=1,10
        if(a(i).le.a(imin)) then
          imin=i
        endif
   11 continue
      write(6,*) 'imin***   ',imin
      end
