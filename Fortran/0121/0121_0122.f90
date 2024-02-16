    program main
      implicit none
      integer :: j
      call inner1()
    contains
      subroutine last
        implicit none
        call outer()
        write(6,'("inner j:",i5)') j
      end subroutine last
      subroutine inner2
        implicit none
        integer :: i
        do i = 1, 1
        call last()
        end do
      end subroutine inner2
      subroutine inner1()
        implicit none
        integer :: i
        j = 10
        do i = 1, 2
          call inner2()
        end do
      end subroutine inner1
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
