      program main
      complex*8  x0(10,10),x1(10,10),x2(10,10),x3(10,10),x4(10,10),
     c        x5(10,10),x6(10,10),x7(10,10),x8(10,10),x9(10,10),
     c        x10(10,10),x11(10,10),x12(10,10),x13(10,10),x14(10,10)
      complex*8  res,result
      complex*8  y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12
      complex*8  z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12
      complex*8  v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12
      complex*8  w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12
      data    result/(213379.812,44400.0000)/

      y0=(0.1,1.9)
      y1=(0.2,1.9)
      y2=(0.3,1.9)
      y3=(0.4,1.9)
      y4=(0.5,1.9)
      y5=(0.6,1.9)
      y6=(0.7,1.9)
      y7=(0.8,1.9)
      y8=(0.9,1.9)
      y9=(1.0,1.9)
      y10=(1.1,1.9)
      y11=(1.2,1.9)
      y12=(1.3,1.9)
      z0=(4.1,1.9)
      z1=(4.2,1.9)
      z2=(4.3,1.9)
      z3=(4.4,1.9)
      z4=(4.5,1.9)
      z5=(4.6,1.9)
      z6=(4.7,1.9)
      z7=(4.8,1.9)
      z8=(4.9,1.9)
      z9=(5.0,1.9)
      z10=(5.1,1.9)
      z11=(5.2,1.9)
      z12=(5.3,1.9)
      v0=(6.1,1.9)
      v1=(6.2,1.9)
      v2=(6.3,1.9)
      v3=(6.4,1.9)
      v4=(6.5,1.9)
      v5=(6.6,1.9)
      v6=(6.7,1.9)
      v7=(6.8,1.9)
      v8=(6.9,1.9)
      v9=(6.0,1.9)
      v10=(7.1,1.9)
      v11=(7.2,1.9)
      v12=(7.3,1.9)
      w0=(8.1,1.9)
      w1=(8.2,1.9)
      w2=(8.3,1.9)
      w3=(8.4,1.9)
      w4=(8.5,1.9)
      w5=(8.6,1.9)
      w6=(8.7,1.9)
      w7=(8.8,1.9)
      w8=(8.9,1.9)
      w9=(9.0,1.9)
      w10=(9.1,1.9)
      w11=(9.2,1.9)
      w12=(9.3,1.9)

      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,-1.0)
         x1(i,j)=(1.0,-1.0)
         x2(i,j)=(2.0,-1.0)
         x3(i,j)=(3.0,-1.0)
         x4(i,j)=(4.0,-1.0)
         x5(i,j)=(5.0,-1.0)
         x6(i,j)=(6.0,-1.0)
         x7(i,j)=(7.0,-1.0)
         x8(i,j)=(8.0,-1.0)
         x9(i,j)=(9.0,-1.0)
         x10(i,j)=(10.0,-1.0)
         x11(i,j)=(11.0,-1.0)
         x12(i,j)=(12.0,-1.0)
         x13(i,j)=(13.0,-1.0)
         x14(i,j)=(14.0,-1.0)
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*y0+x2(i,j)*y1+x3(i,j)*y2+x4(i,j)*y3+
     &         x5(i,j)*y4+x6(i,j)*y5+x7(i,j)*y6+x8(i,j)*y7+x9(i,j)*y8+
     &         x10(i,j)*y9+x12(i,j)*y10+x13(i,j)*y11+x14(i,j)*y12+
     &         x1(i,j)*z0+x2(i,j)*z1+x3(i,j)*z2+x4(i,j)*z3+x11(i,j)+
     &         x5(i,j)*z4+x6(i,j)*z5+x7(i,j)*z6+x8(i,j)*z7+x9(i,j)*z8+
     &         x10(i,j)*z9+x12(i,j)*z10+x13(i,j)*z11+x14(i,j)*z12+
     &         x1(i,j)*v0+x2(i,j)*v1+x3(i,j)*v2+x4(i,j)*v3+
     &         x5(i,j)*v4+x6(i,j)*v5+x7(i,j)*v6+x8(i,j)*v7+x9(i,j)*v8+
     &         x10(i,j)*v9+x12(i,j)*v10+x13(i,j)*v11+x14(i,j)*v12+
     &         x1(i,j)*w0+x2(i,j)*w1+x3(i,j)*w2+x4(i,j)*w3+
     &         x5(i,j)*w4+x6(i,j)*w5+x7(i,j)*w6+x8(i,j)*w7+x9(i,j)*w8+
     &         x10(i,j)*w9+x12(i,j)*w10+x13(i,j)*w11+x14(i,j)*w12
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
