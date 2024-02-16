
program main
  integer,parameter :: n=10

  type str2
    real(8),pointer,dimension(:,:) :: memberXX
  end type str2

  type str1
    type(str2),dimension(10,10) :: memStructXX
  end type str1

  real(8),parameter :: ANSWER=100.0
  real(8) :: result

  type(str1),pointer,dimension(:,:) :: structXX

  allocate(structXX(1:10,1:10))
  do i=1,10
    do j=1,10
      do k=1,10
        do l=1,10
          allocate(structXX(i,j)%memStructXX(k,l)%memberXX(n,n))
        enddo
      enddo
    enddo
  enddo

  call sub_test(structXX)

  result = sum( structXX(1,1)%memStructXX(2,2)%memberXX )

  if ( result .eq. ANSWER ) then
    print *,"ok"
  else
    print *,"ng",result,ANSWER
  endif

  contains
  subroutine sub_test(structXX)
    type(str1),pointer,dimension(:,:) :: structXX

    do i1=1,10
      do i2=1,10
        do i3=1,10
	  do i4=1,10
            do i5=1,10
              do i6=1,10
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX(i5,i6) = 1 !nine03a
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX( :,i6) = 1 !nine03b
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX( :, :) = 1 !nine03c
              enddo
            enddo
          enddo
        enddo
      enddo
    enddo

  end subroutine sub_test
end program main




