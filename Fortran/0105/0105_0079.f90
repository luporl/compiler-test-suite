module m1
contains
subroutine s3(r81,r82,r83,r84,r85,r86,r8,x8,addx,addy)
complex(8)::r81(:,:),r82(:,:),r83(:,:),r84(:,:),r85(:,:),r86(:,:)
complex(8)::r8(:,:),x8(:,:)
complex(8)::addx(:,:),addy(:,:)
!
r8=addx+matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/addx/)-(/&
(6356.,-908.0),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.),(7931.,-1133.),(8246.,-1178.),(8561.,-1223.),(8876.,-1268.)&
/))>10.))print *,301
!
r8=addx+matmul(conjg(r81),      r82)
if (any(abs((/r8/)-(/addx/)-(/&
(6356.,908.0),(6608.,944.0),(6860.,980.0),(7112.,1016.),(7931.,1133.),(8246.,1178.),(8561.,1223.),(8876.,1268.)&
/))>10.))print *,311
!
r8=addx+matmul(conjg(r81),      conjg(r82))
if (any(abs((/r8/)-(/addx/)-(/&
(-4540.,-4540.),(-4720.,-4720.),(-4900.,-4900.),(-5080.,-5080.),(-5665.,-5665.),(-5890.,-5890.),(-6115.,-6115.),(-6340.,-6340.)&
/))>10.))print *,321
!
r8=addx+matmul(conjg(r86),transpose(r83))
if (any(abs((/r8/)-(/addx/)-(/&
(12187.,-1741.0),(12670.,-1810.0),(13153.,-1879.0),(13636.,-1948.0),(12712.,-1816.0),(13216.,-1888.0),(13720.,-1960.0),(14224.,-2032.0)&
/))>10.))print *,302

x8=addy+matmul(transpose(r81),conjg(r84))
if (any(abs((/x8/)-(/addy/)-(/&
(14210.,-2030.0),(16730.,-2390.0),(19250.,-2750.0),(16730.,-2390.0),(19698.,-2814.0),(22666.,-3238.0)&
/))>10.))print *,402

x8=addy+matmul(transpose(r81),transpose(r85))
if (any(abs((/x8/)-(/addy/)-(/&
(-6510.,8680.),(-7662.,10216.),(-8814.,11752.),(-6780.,9040.),(-7980.,10640.),(-9180.,12240.)&
/))>10.))print *,403
end subroutine
subroutine s31(r81,r82,r83,r84,r85,r86,r8,x8,addx,addy)
complex(4)::r81(:,:),r82(:,:),r83(:,:),r84(:,:),r85(:,:),r86(:,:)
complex(4)::r8(:,:),x8(:,:)
complex(4)::addx(:,:),addy(:,:)
!
r8=addx+matmul(r81,conjg(r82))
if (any(abs((/r8/)-(/addx/)-(/&
(6356.,-908.0),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.),(7931.,-1133.),(8246.,-1178.),(8561.,-1223.),(8876.,-1268.)&
/))>10.))print *,301
!
r8=addx+matmul(conjg(r81),      r82)
if (any(abs((/r8/)-(/addx/)-(/&
(6356.,908.0),(6608.,944.0),(6860.,980.0),(7112.,1016.),(7931.,1133.),(8246.,1178.),(8561.,1223.),(8876.,1268.)&
/))>10.))print *,311
!
r8=addx+matmul(conjg(r81),      conjg(r82))
if (any(abs((/r8/)-(/addx/)-(/&
(-4540.,-4540.),(-4720.,-4720.),(-4900.,-4900.),(-5080.,-5080.),(-5665.,-5665.),(-5890.,-5890.),(-6115.,-6115.),(-6340.,-6340.)&
/))>10.))print *,321
!
r8=addx+matmul(conjg(r86),transpose(r83))
if (any(abs((/r8/)-(/addx/)-(/&
(12187.,-1741.0),(12670.,-1810.0),(13153.,-1879.0),(13636.,-1948.0),(12712.,-1816.0),(13216.,-1888.0),(13720.,-1960.0),(14224.,-2032.0)&
/))>10.))print *,302

x8=addy+matmul(transpose(r81),conjg(r84))
if (any(abs((/x8/)-(/addy/)-(/&
(14210.,-2030.0),(16730.,-2390.0),(19250.,-2750.0),(16730.,-2390.0),(19698.,-2814.0),(22666.,-3238.0)&
/))>10.))print *,402

x8=addy+matmul(transpose(r81),transpose(r85))
if (any(abs((/x8/)-(/addy/)-(/&
(-6510.,8680.),(-7662.,10216.),(-8814.,11752.),(-6780.,9040.),(-7980.,10640.),(-9180.,12240.)&
/))>10.))print *,403
end subroutine
subroutine s3a
complex(8),target::t81(2,4,3),t82(2,3,2),t83(2,2,3),t84(2,4,2),t85(2,2,4),t86(2,4,3)
complex(8),target::t8(2,4,2),tx8(2,3,2)
complex(8),target::add1t(2,4,2),add2t(2,3,2)
complex(8),pointer::r81(:,:),r82(:,:),r83(:,:),r84(:,:),r85(:,:),r86(:,:)
complex(8),pointer::r8(:,:),x8(:,:)
complex(8),pointer::add1(:,:),add2(:,:)
add1t=0
add2t=0
r81=>t81(2,:,:)
r82=>t82(2,:,:)
r83=>t83(2,:,:)
r84=>t84(2,:,:)
r85=>t85(2,:,:)
r86=>t86(2,:,:)
r8=>t8(2,:,:)
x8=>tx8(2,:,:)
add1=>add1t(2,:,:)
add2=>add2t(2,:,:)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
r86=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
add1=>add1t(2,:,:)
add2=>add2t(2,:,:)
call       s3(r81,r82,r83,r84,r85,r86,r8,x8,add1,add2)
end subroutine
subroutine s31a
complex(4),target::t81(2,4,3),t82(2,3,2),t83(2,2,3),t84(2,4,2),t85(2,2,4),t86(2,4,3)
complex(4),target::t8(2,4,2),tx8(2,3,2)
complex(4),target::add1t(2,4,2),add2t(2,3,2)
complex(4),pointer::r81(:,:),r82(:,:),r83(:,:),r84(:,:),r85(:,:),r86(:,:)
complex(4),pointer::r8(:,:),x8(:,:)
complex(4),pointer::add1(:,:),add2(:,:)
add1t=0
add2t=0
r81=>t81(2,:,:)
r82=>t82(2,:,:)
r83=>t83(2,:,:)
r84=>t84(2,:,:)
r85=>t85(2,:,:)
r86=>t86(2,:,:)
r8=>t8(2,:,:)
x8=>tx8(2,:,:)
add1=>add1t(2,:,:)
add2=>add2t(2,:,:)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
r86=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
call       s31(r81,r82,r83,r84,r85,r86,r8,x8,add1,add2)
end subroutine
end
use m1
call s3a
call s31a
print *,'pass'
end
