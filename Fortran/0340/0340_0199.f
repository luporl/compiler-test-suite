      program main
      real*4  x0(10,10),x1(10,10),x2(10,10),
     &        x3(10,10),x4(10,10),x5(10,10),
     &        x6(10,10),x7(10,10),x8(10,10),
     &        x9(10,10),x10(10,10),x11(10,10),
     &        x12(10,10),x13(10,10),x14(10,10),
     &        x15(10,10),x16(10,10),x17(10,10),
     &        x18(10,10),x19(10,10),x20(10,10),
     &        x21(10,10),x22(10,10),x23(10,10),
     &        x24(10,10),x25(10,10),x26(10,10),
     &        x27(10,10),x28(10,10),x29(10,10),
     &        x30(10,10),y0(10,10),z0(10,10)
      real*4  res,result
      data    result/122028.953/


      do j=1,10
       do i=1,10
         x0(i,j)=(0.0,0.0)
         y0(i,j)=(0.0,0.0)
         z0(i,j)=(0.0,0.0)
         x1(i,j)=(1.0,-2.0)
         x2(i,j)=(2.0,-3.0)
         x3(i,j)=(3.0,-4.0)
         x4(i,j)=(4.0,-5.0)
         x5(i,j)=(5.0,-6.0)
         x6(i,j)=(6.0,-7.0)
         x7(i,j)=(7.0,-8.0)
         x8(i,j)=(8.0,-9.0)
         x9(i,j)=(9.0,-1.0)
         x10(i,j)=(10.0,0.0)
         x11(i,j)=(11.0,-1.0)
         x12(i,j)=(12.0,-2.0)
         x13(i,j)=(13.0,-3.0)
         x14(i,j)=(14.0,-4.0)
         x15(i,j)=(15.0,-5.0)
         x16(i,j)=(16.0,-6.0)
         x17(i,j)=(17.0,-7.0)
         x18(i,j)=(18.0,-8.0)
         x19(i,j)=(19.0,-9.0)
         x20(i,j)=(20.0,0.0)
         x21(i,j)=(21.0,-1.0)
         x22(i,j)=(22.0,-1.0)
         x23(i,j)=(23.0,-1.0)
         x24(i,j)=(24.0,-1.0)
         x25(i,j)=(25.0,-1.0)
         x26(i,j)=(26.0,-1.0)
         x27(i,j)=(27.0,-1.0)
         x28(i,j)=(28.0,-1.0)
         x29(i,j)=(29.0,-1.0)
         x30(i,j)=(30.0,-1.0)
       enddo
      enddo
      do j=1,10
       do i=1,10
         x0(i,j)=x1(i,j)*i+x2(i,j)*i+x3(i,j)*i
     &        +x4(i,j)*i+x5(i,j)+x6(i,j)
     &        +x7(i,j)+x8(i,j)+x9(i,j)
     &        +x10(i,j)/i+x11(i,j)/i+x12(i,j)/i
     &        +x13(i,j)/i+x14(i,j)/i+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)/i+x21(i,j)/i
     &        +x22(i,j)/i+x23(i,j)/i+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
         y0(i,j)=x1(i,j)*i+x2(i,j)*i+x3(i,j)*i
     &        +x4(i,j)*i+x5(i,j)+x6(i,j)
     &        +x7(i,j)+x8(i,j)+x9(i,j)
     &        +x10(i,j)/i+x11(i,j)/i+x12(i,j)/i
     &        +x13(i,j)/i+x14(i,j)/i+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)/i+x21(i,j)/i
     &        +x22(i,j)/i+x23(i,j)/i+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
         z0(i,j)=x1(i,j)*i+x2(i,j)*i+x3(i,j)*i
     &        +x4(i,j)*i+x5(i,j)+x6(i,j)
     &        +x7(i,j)+x8(i,j)+x9(i,j)
     &        +x10(i,j)/i+x11(i,j)/i+x12(i,j)/i
     &        +x13(i,j)/i+x14(i,j)/i+x15(i,j)
     &        +x16(i,j)+x17(i,j)+x18(i,j)
     &        +x19(i,j)+x20(i,j)/i+x21(i,j)/i
     &        +x22(i,j)/i+x23(i,j)/i+x24(i,j)
     &        +x25(i,j)+x26(i,j)+x27(i,j)
     &        +x28(i,j)+x29(i,j)+x30(i,j)
       enddo
      enddo
      res=0

      do j=1,10
       do i=1,10
        res=res+x0(i,j)+y0(i,j)+z0(i,j)
       enddo
      enddo
      if (abs(res-result)>0.0001) goto 10
      write (6,*) "ok"
      goto 20
 10   write (6,*) "ng"
      write(6,*) res
      write(6,*) x0
 20   continue
      end
