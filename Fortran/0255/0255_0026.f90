program test
Real*4,parameter::num1(2,3) =reshape([12.23,-44.23,-23.2,11.34,-34.5,21.56],[2,3])
Real*8,parameter::num2(2,3) =reshape([12.23,-44.23,-23.2,11.34,-34.5,21.56],[2,3])
Real*16,parameter::num3(2,3)=reshape([12.23,-44.23,-23.2,11.34,-34.5,21.56],[2,3])
Real*4::r1(3)=norm2(num1,1)
real*8::r2(3) = norm2(num2,1)
real*16::r3(3) = norm2(num3,1)
if(r1(1)<=45.8897.and.r1(1)>=45.8897)print*,"101"
if(r1(2)<=25.8231.and.r1(2)>=25.8232)print*,"102"
if(r1(3)<=40.6827.and.r1(3)>=40.6828)print*,"103"
if(r2(1)<=45.8897.and.r2(1)>=45.8897)print*,"101"
if(r2(2)<=25.8231.and.r2(2)>=25.8232)print*,"102"
if(r2(3)<=40.6827.and.r2(3)>=40.6828)print*,"103"
if(r3(1)<=45.8897.and.r3(1)>=45.8897)print*,"101"
if(r3(2)<=25.8231.and.r3(2)>=25.8232)print*,"102"
if(r3(3)<=40.6827.and.r3(3)>=40.6828)print*,"103"
print*,"pass"
end
