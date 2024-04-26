      dimension   a(20),b(20),c(20),d(20)
      dimension   aa(40),bb(40),cc(40)
      complex*16  a,b,c
      real*8      aa,bb,cc,d
      equivalence  (a(1),b(1)),(cc(1),bb(1))
      do 10 j=1,20
        a(j) = (2.01d0,1.01d0)
        c(j) = (3.01d0,0.03d0)
 10   continue
      do 20 j=1,20
        bb(j) = 3.11
        d(j) = 2.05
 20   continue
      do 30 j=2,12
        a(j+2) = b(j+1) * c(j+1)
        c(j) = d(j) + b(j)
        aa(j) = dimag(b(j))
        b(j) = c(j) - d(j)
 30   continue
      do 40 j=2,13
        aa(j+2) = bb(j+1) * cc(j+1)
        cc(j) = d(j) + bb(j)
        bb(j) = cc(j) - d(j) + dreal(a(j))
 40   continue
      write(6,*) (a(i),i=5,9)
      write(6,*) (b(i),i=6,10)
      write(6,*) (c(i),i=4,8)
      write(6,*) (d(i),i=5,9)
      write(6,*) (aa(i),i=4,13)
      write(6,*) (bb(i),i=5,14)
      stop
      end
