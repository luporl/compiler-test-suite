      program main
      real*8  a(20,20),b(20,20),c(20,20)
      data  a,b/400*1.d0,400*2.d0/,nn/15/
      data  c/400*3.d0/
      do 10 i=1,nn
       a(i,nn) = 21.- float(i)
       do 20 j=2,nn
        c(i,j) = b(i+1,j-1)-a(i,j)
  20   continue
       a(i,2) = float(i)
  10  continue
      write(6,*) ((a(i,j),i=1,10),j=2,15,13)
      write(6,*) ((c(i,j),i=1,10),j=1,10)
      stop
      end
