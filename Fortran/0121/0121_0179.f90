        common/com/ll
        logical*8 ll
      integer*8::i,m=5
      type st1
        real*4::z(5)
      end type
      type(st1)::xyz
      xyz%z=3.0
      do i=1,2
        if (ll) then
        xyz%z(m+(-1))=1.0
        endif
        do m=1,2
        end do
      end do
      print*,merge("OK","NG", all(xyz%z.eq.(/3,1,3,1,3/)))
      end
!
        block data
        common/com/ll
        logical*8 ll
        data ll/.true./
        end 
