   module mod333
   contains
    subroutine sub333(i,j)
      j=j*i
    end subroutine
   end module

   module mod
    use mod333
   contains
    subroutine sub22(i,j)
      j=j+i
      call sub333(i,j)
    end subroutine
   end module mod

    program main
    use mod
      j=1
      i=1
      write(1,'(2i4)') i,j
      rewind(1)
      read (1,'(2i4)') i,j
      call sub22(i,j)
     if (i/=1.or.j/=2) print *,'error'
     print *,'pass'
    end program
