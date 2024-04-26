      dimension  a(20),b(20),c(20),d(20)
      equivalence  (a(1),z),(c(10),y)
      s = 1.0
      do 10 i=1,20
        a(i) = s
        b(i) = s + 1.0
        c(i) = s * 2.0
        d(i) = s / 2.0
        s = s + 1.0
 10   continue
      do 20 j=2,17
          c(j) = a(j+1) + b(j)
          a(j) = c(j-1) * d(j)
          d(j) = a(j) + b(j)
          x = z + b(j) - y
 20   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) x
      write(6,*) y
      write(6,*) z
      stop
      end
