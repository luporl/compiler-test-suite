      program main
      real a(100),amax/5/,c(102)
      call indata(a,c)
      do 10 i=1,100
       c(i+1)=c(i)+c(i+2)
       amax=max(a(i),amax)
   10 continue
      write(6,999) amax,(a(i),i=1,100)
  999 format(1h ,8h- amax -,f10.5,/,11h -- a(*) --,/,20(5(f10.5,2x)/))
      end
      subroutine indata(x,y)
      real x(100),y(102)
      do 100 i=1,100
       x(i)=i+0.5
       y(i)=1
  100 continue
      y(101) = 1
      y(102) = 1
      end
