subroutine sub(a,b,c)
  complex a,b,c
  do j = 1, 10
    do i = 1, 10
      if (i > 6 .and. j == 3) then
        c = c + a * b
      endif
    enddo
  enddo
end subroutine

program main
  complex a,b,c
  a = (1.0,0.0)
  b = (2.0,0.0)
  c = (0.0,0.0)

  call sub(a,b,c)
  if (real(c) .eq. 8.0) then
     write(6,*) 'OK'
  else
     write(6,*) 'NG'
  endif
end program main
