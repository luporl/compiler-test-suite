
program main
  type str2
    real(8),dimension(10,10) :: memberXX
  end type str2

  type str1
    type(str2),dimension(10,10) :: memStructXX
  end type str1

  real(8),parameter :: ANSWER=100.0
  real(8) :: result

  type(str1),pointer,dimension(:,:) :: structXX
  allocate(structXX(10,10))
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
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX(i5,i6) = 1 !nine04a
	        structXX(i1, :)%memStructXX(i3,i4)%memberXX(i5,i6) = 1 !nine04b
	        structXX( :, :)%memStructXX(i3,i4)%memberXX(i5,i6) = 1 !nine04c
	        structXX(i1,i2)%memStructXX( :,i4)%memberXX(i5,i6) = 1 !nine04d
	        structXX(i1,i2)%memStructXX( :, :)%memberXX(i5,i6) = 1 !nine04e
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX( :,i6) = 1 !nine04f
	        structXX(i1,i2)%memStructXX(i3,i4)%memberXX( :, :) = 1 !nine04g
              enddo
            enddo
          enddo
        enddo
      enddo
    enddo

  end subroutine sub_test
end program main




