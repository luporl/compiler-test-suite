      subroutine sub_1
      integer*1,parameter::pa=5
      type int_data
        SEQUENCE
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(pa*2) ::id1,id2
      common id1,id2
c
      do i=1,pa*2
        id1(i)%i1 = (/(i,i=1,pa)/)*i
        id1(i)%i2 = (/(i,i=1,pa)/)*i
        id1(i)%i4 = (/(i,i=1,pa)/)*i
        id1(i)%i8 = (/(i,i=1,pa)/)*i
        id1(i)%ch = 'abc -abc- '
      end do
      id2 = id1
      return
      end subroutine sub_1
c
      subroutine print_data
      integer*1,parameter::pa=5
      type int_data
        SEQUENCE
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(pa*2) ::id1,id2
      common id1,id2
      print *,id2
      return
      end subroutine print_data
c
      subroutine check_and_store
      integer*1,parameter::pa=5
      type int_data
        SEQUENCE
        integer   (kind=8),dimension(pa) ::i8
        integer   (kind=1),dimension(pa) ::i1
        integer   (kind=4),dimension(pa) ::i4
        integer   (kind=2),dimension(pa) ::i2
        character (len=10) ch(pa)
      end type
      type (int_data),dimension(pa*2) ::id1,id2
      common id1,id2
      do i=1,pa
        where ( id1(:)%i1(i) == id2(:)%i1(i) )
     +    id2(:)%i1(i)=id2(:)%i1(i)-id2(:)%i1(i)
        where ( id1(:)%i2(i) == id2(:)%i2(i) )
     +    id2(:)%i2(i)=id2(:)%i2(i)-id2(:)%i2(i)
        where ( id1(:)%i4(i) == id2(:)%i4(i) )
     +    id2(:)%i4(i)=id2(:)%i4(i)-id2(:)%i4(i)
        where ( id1(:)%i8(i) == id2(:)%i8(i) )
     +    id2(:)%i8(i)=id2(:)%i8(i)-id2(:)%i8(i)
        where ( id1(:)%ch(i) == 'abc -abc- ')
     +    id2(:)%ch(i)='          '
      end do
      return
      end subroutine check_and_store
c
      integer*1,parameter::pa=5
      call sub_1
      do j=1,pa*2
        call check_and_store
        do i=1,pa
          call check_and_store
        end do
      end do
      call print_data
      end
