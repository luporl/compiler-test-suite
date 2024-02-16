  module m1
       complex(8) :: ca2(2,3) = reshape( [(1,2),(3,4),(5,6),(7,8),(9,10),(11,12)] , [2,3] )
       complex(8) :: ca3(3,2) = reshape( [(1,2),(3,4),(5,6),(7,8),(9,10),(11,12)] , [3,2] )
       
    contains
       subroutine s01(r1,r2)
      real(8)   :: r1(2,3), r2(3,2) , z1(2,2) , z2(2,2)
      if (any(r1/=ca2%im)) print *,901
      if (any(r2/=ca3%im)) print *,902
      z1=matmul(r1,r2)
      z2=matmul(ca2%im,ca3%im)
      if (any(z1/=z2)) then
        print *,101,z1
        print *,102,z2
      endif
      end subroutine
      end
      use m1
     call   s01(ca2%im,ca3%im)
     print *,'pass'
      end

