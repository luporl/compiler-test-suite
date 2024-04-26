      program main
      complex*8  x0(10,10),x1(10,10),x2(10,10),x3(10,10),
     &        x4(10,10),x5(10,10),
     &        y0(10,10),y1(10,10),y2(10,10),y3(10,10),
     &        y4(10,10),y5(10,10),
     &        z0(10,10),z1(10,10),z2(10,10),z3(10,10),
     &        z4(10,10),z5(10,10)
      complex*8  a00(10,10),a01(10,10),a02(10,10),a03(10,10),
     &        a04(10,10),a05(10,10),a06(10,10),a07(10,10),
     &        a08(10,10),a09(10,10),a10(10,10),a11(10,10),
     &        a12(10,10),a13(10,10),a14(10,10),a15(10,10)
      complex*8  res,result
      data    result/(177000.000,46200.0000)/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,-1.0)+cmplx(j,i)
         y0(i,j)=(0.0,-1.0)+cmplx(j,i)
         z0(i,j)=(0.0,-1.0)+cmplx(j,i)
         x1(i,j)=(1.0,-2.0)+cmplx(j,i)
         y1(i,j)=(1.0,-2.0)+cmplx(j,i)
         z1(i,j)=(1.0,-2.0)+cmplx(j,i)
         x2(i,j)=(2.0,-3.0)+cmplx(j,i)
         y2(i,j)=(2.0,-3.0)+cmplx(j,i)
         z2(i,j)=(2.0,-3.0)+cmplx(j,i)
         x3(i,j)=(3.0,-4.0)+cmplx(j,i)
         y3(i,j)=(3.0,-4.0)+cmplx(j,i)
         z3(i,j)=(3.0,-4.0)+cmplx(j,i)
         x4(i,j)=(4.0,-5.0)+cmplx(j,i)
         y4(i,j)=(4.0,-5.0)+cmplx(j,i)
         z4(i,j)=(4.0,-5.0)+cmplx(j,i)
         x5(i,j)=(5.0,-6.0)+cmplx(j,i)
         y5(i,j)=(5.0,-6.0)+cmplx(j,i)
         z5(i,j)=(5.0,-6.0)+cmplx(j,i)
       enddo
      enddo
      do j=1,10
       do i=1,10
         a00(i,j)=x0(i,j)*x1(1,1)+y0(i,j)*y1(1,1)+z0(i,j)*z1(1,1)
         a01(i,j)=x1(i,j)*x2(2,1)+y1(i,j)*y2(2,1)+z1(i,j)*z2(2,1)
         a02(i,j)=x2(i,j)*x3(3,1)+y2(i,j)*y3(3,1)+z2(i,j)*z3(3,1)
         a03(i,j)=x3(i,j)*x4(4,1)+y3(i,j)*y4(4,1)+z3(i,j)*z4(4,1)
         a04(i,j)=x4(i,j)*x5(5,1)+y4(i,j)*y5(5,1)+z4(i,j)*z5(5,1)
         a05(i,j)=x5(i,j)*x0(6,1)+y5(i,j)*y0(6,1)+z5(i,j)*z0(6,1)
         a06(i,j)=x0(i,j)*x1(1,2)+y0(i,j)*y1(1,2)+z0(i,j)*z1(1,2)
         a07(i,j)=x1(i,j)*x2(2,2)+y1(i,j)*y2(2,2)+z1(i,j)*z2(2,2)
         a08(i,j)=x2(i,j)*x3(3,2)+y2(i,j)*y3(3,2)+z2(i,j)*z3(3,2)
         a09(i,j)=x3(i,j)*x4(4,2)+y3(i,j)*y4(4,2)+z3(i,j)*z4(4,2)
         a10(i,j)=x4(i,j)*x5(5,2)+y4(i,j)*y5(5,2)+z4(i,j)*z5(5,2)
         a11(i,j)=x5(i,j)*x0(6,2)+y5(i,j)*y0(6,2)+z5(i,j)*z0(6,2)
         a12(i,j)=x0(i,j)*x1(1,3)+y0(i,j)*y1(1,3)+z0(i,j)*z1(1,3)
         a13(i,j)=x1(i,j)*x2(2,3)+y1(i,j)*y2(2,3)+z1(i,j)*z2(2,3)
         a14(i,j)=x2(i,j)*x3(3,3)+y2(i,j)*y3(3,3)+z2(i,j)*z3(3,3)
         a15(i,j)=x3(i,j)*x4(4,3)+y3(i,j)*y4(4,3)+z3(i,j)*z4(4,3)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
         res=res+a00(i,j)+a01(i,j)+a02(i,j)+a03(i,j)+a04(i,j)+
     &           a05(i,j)+a06(i,j)+a07(i,j)+a08(i,j)+a09(i,j)+
     &           a10(i,j)+a11(i,j)+a12(i,j)+a13(i,j)+a14(i,j)+a15(i,j)
       enddo
      enddo

      if (abs(res-result)>0.0001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
 20   continue
      end
