subroutine s3
complex(8)::r81(4,3),r82(3,2),r83(2,3),r84(4,2),r85(2,4),r86(4,3)
complex(8)::r8(4,2),x8(3,2)
complex(8)::cx=(104,105)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
r86=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
!
r8=cx
r8=matmul(r81,conjg(r82))+r8
if (any(abs((/r8/)-cx-(/&
(6356.,-908.0),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.),(7931.,-1133.),(8246.,-1178.),(8561.,-1223.),(8876.,-1268.)&
/))>10.))print *,301
!
r8=cx
r8=matmul(conjg(r81),      r82)+r8
if (any(abs((/r8/)-cx-(/&
(6356.,908.0),(6608.,944.0),(6860.,980.0),(7112.,1016.),(7931.,1133.),(8246.,1178.),(8561.,1223.),(8876.,1268.)&
/))>10.))print *,311
!
r8=cx
r8=matmul(conjg(r81),      conjg(r82))+r8
if (any(abs((/r8/)-cx-(/&
(-4540.,-4540.),(-4720.,-4720.),(-4900.,-4900.),(-5080.,-5080.),(-5665.,-5665.),(-5890.,-5890.),(-6115.,-6115.),(-6340.,-6340.)&
/))>10.))print *,321
!
r8=cx
r8=matmul(conjg(r86),transpose(r83))+r8
if (any(abs((/r8/)-cx-(/&
(12187.,-1741.0),(12670.,-1810.0),(13153.,-1879.0),(13636.,-1948.0),(12712.,-1816.0),(13216.,-1888.0),(13720.,-1960.0),(14224.,-2032.0)&
/))>10.))print *,302

x8=cx
x8=matmul(transpose(r81),conjg(r84))+x8
if (any(abs((/x8/)-cx-(/&
(14210.,-2030.0),(16730.,-2390.0),(19250.,-2750.0),(16730.,-2390.0),(19698.,-2814.0),(22666.,-3238.0)&
/))>10.))print *,402

x8=cx
x8=matmul(transpose(r81),transpose(r85))+x8
if (any(abs((/x8/)-cx-(/&
(-6510.,8680.),(-7662.,10216.),(-8814.,11752.),(-6780.,9040.),(-7980.,10640.),(-9180.,12240.)&
/))>10.))print *,403
end
subroutine s31
complex(4)::r81(4,3),r82(3,2),r83(2,3),r84(4,2),r85(2,4),r86(4,3)
complex(4)::r8(4,2),x8(3,2)
complex(8)::cx=(104,105)
r81=reshape((/(cmplx(i,i+i),i=21,32)/),(/4,3/))
r82=reshape((/(cmplx(i,i+i+i),i=11,16)/),(/3,2/))
r83=reshape((/(cmplx(i,i+i),i=21,26)/),(/2,3/))
r84=reshape((/(cmplx(i,i+i+i),i=21,28)/),(/4,2/))
r85=reshape((/(cmplx(i,i+i),i=21,28)/),(/2,4/))
r86=reshape((/(cmplx(i,i+i+i),i=21,32)/),(/4,3/))
!
r8=cx
r8=matmul(r81,conjg(r82))+r8
if (any(abs((/r8/)-cx-(/&
(6356.,-908.0),(6608.,-944.0),(6860.,-980.0),(7112.,-1016.),(7931.,-1133.),(8246.,-1178.),(8561.,-1223.),(8876.,-1268.)&
/))>10.))print *,301
!
r8=cx
r8=matmul(conjg(r81),      r82)+r8
if (any(abs((/r8/)-cx-(/&
(6356.,908.0),(6608.,944.0),(6860.,980.0),(7112.,1016.),(7931.,1133.),(8246.,1178.),(8561.,1223.),(8876.,1268.)&
/))>10.))print *,311
!
r8=cx
r8=matmul(conjg(r81),      conjg(r82))+r8
if (any(abs((/r8/)-cx-(/&
(-4540.,-4540.),(-4720.,-4720.),(-4900.,-4900.),(-5080.,-5080.),(-5665.,-5665.),(-5890.,-5890.),(-6115.,-6115.),(-6340.,-6340.)&
/))>10.))print *,321
!
r8=cx
r8=matmul(conjg(r86),transpose(r83))+r8
if (any(abs((/r8/)-cx-(/&
(12187.,-1741.0),(12670.,-1810.0),(13153.,-1879.0),(13636.,-1948.0),(12712.,-1816.0),(13216.,-1888.0),(13720.,-1960.0),(14224.,-2032.0)&
/))>10.))print *,302

x8=cx
x8=matmul(transpose(r81),conjg(r84))+x8
if (any(abs((/x8/)-cx-(/&
(14210.,-2030.0),(16730.,-2390.0),(19250.,-2750.0),(16730.,-2390.0),(19698.,-2814.0),(22666.,-3238.0)&
/))>10.))print *,402

x8=cx
x8=matmul(transpose(r81),transpose(r85))+x8
if (any(abs((/x8/)-cx-(/&
(-6510.,8680.),(-7662.,10216.),(-8814.,11752.),(-6780.,9040.),(-7980.,10640.),(-9180.,12240.)&
/))>10.))print *,403
end
call s3
call s31
print *,'pass'
end
