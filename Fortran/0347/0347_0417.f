      program main
      dimension a(10)
      do 20 j=1,10
  20  a(j)=j

      do 10 i=1,10
        if(a(5)-5) 1,2,3
   1      x=1.
          go to 10
   2      x=2.
          go to 4
   3      x=3
  10  continue
   4  x=4.
      write(6,*) x
      stop
      end
