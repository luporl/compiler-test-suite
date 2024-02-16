    program main
      implicit none
      integer :: j
      j = 10
      call inner1()
      call inner2()
    contains
      subroutine inner1()
        implicit none
        integer :: i
        do i = 1, 1
          call inner2()
        end do
      end subroutine inner1
      subroutine inner2
        call inner3()
      end subroutine inner2
      subroutine inner3
        implicit none
        call outer()
        write(6,'("inner j:",i5)') j
      end subroutine inner3
    end program main

    subroutine outer()
      implicit none
      integer :: x
      x = 1
      call outer1()
    contains
      subroutine outer1()
        implicit none
        write(6,'("outer x:",I5)') x
      end subroutine outer1
    end subroutine outer

