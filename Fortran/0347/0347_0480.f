      program main
      dimension a(10),b(11)
      data b/11*0.0/

      do 20 j=1,10
  20    a(j)=j

      do 10 i=1,10
        ss=b(i)
        if(a(i).gt.5.) go to 1
        b(i+1)=a(i)*1.2+ss
  10  continue
 1    write(6,*) a,b
      stop
      end
