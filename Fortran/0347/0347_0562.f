      real*4 a(10)
      integer*4 imax,dif
      data   a/1.d0,2.d0,55.d0,5.d0,12.d0,55.d0,-3.d0,2.d0,-44.d0,7.d0/
      data   imax/1/
      do 11 i=1,10
        dif=a(imax)-a(i)
        if(0.ge.dif) then
          imax=i
        endif
   11 continue
      write(6,*) 'imax***   ',imax
      end
