!

program main
  integer,parameter::n=100
  type pp
    real(8),dimension(:),pointer:: p
  end type pp
  type(pp), dimension(:),allocatable :: array
  integer,parameter :: ans=10100

  allocate(array(n))
  do i = 1, n
    allocate(array(i)%p(n))
    array(i)%p=i
  end do

  call sub_pointer_array(array,n)

  if (int(sum(array(n)%p)) .eq. ans) then
    print *,"ok: sum(array) = ",sum(array(n)%p)
  else
    print *,"ng: sum(array) = ",sum(array(n)%p)
  endif

  do i = 1, n
    deallocate(array(i)%p)
  end do
  deallocate(array)

  contains
  subroutine sub_pointer_array(array,n)
  type(pp),dimension(:) :: array
    do i=1,n
      do j=1,n
        array(j)%p(i) = array(j)%p(i) + 1._8
      enddo
    enddo
  end subroutine sub_pointer_array
end program
