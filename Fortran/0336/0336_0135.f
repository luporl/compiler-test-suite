      real*4 a080(10,10,10),b080(10,10,10),c080(10,10,10),d080(10,10,10)
      data   a080,b080/1000*0.130,1000*0.250/,c080,d080/2000*0/
      do 10 i=5,10,3
        do 10 j=2,i,3
          do 10 k=5,10,1
            a080(+i,+j,+k) = a080(+i,+j,+k)
            b080(+i,+j,+k) = b080(+i,+j,+k)
            a080(+i,+j,+k) = a080(+i,+j,+k)
            b080(+i,+j,+k) = b080(+i,+j,+k)
            c080(+i,+j,+k) = c080(+i,+j,+k)+a080(+i,+j,+k)
            d080(+i,+j,+k) = d080(+i,+j,+k)*b080(+i,+j,+k)
10    continue
      print '(1000f11.7)',c080
      print '(1000f11.7)',d080
      stop
      end
