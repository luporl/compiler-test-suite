program main
  real :: a1,a2,a3
  real,dimension(100,100) :: b,c,d,not_artclt1,not_artclt2
  integer :: i,j,k,ii
  a1=2
  a2=3
  a3=4
  b=1
  c=3
  not_artclt1 = 2.0
  not_artclt2 = 5.0
  k=10
  kk=20
  ii=0

  j=1
  do while (j < 100)
     do i = 1,100

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2
     end do
     j = j+1
  end do
  print *,"#01",sum(b),sum(not_artclt1)

  i=1
  do j = 1,100
     do while (i < 101)
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( kk .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
        i = i + 1
     end do
  end do
  print *,"#02",sum(b),sum(c),sum(not_artclt1)

  do while (ii < 1)
     do j = 1,100
        do i = 1,100
           b(i,j) = a1
           b(i,j) = b(i,j)/2
           b(i,j) = b(i,j) +7
           b(i,j) = b(i,j) *3
           b(i,j) = b(i,j) -1
           b(i,j) = b(i,j) *2
           b(i,j) = b(i,j)/2

           if ( k .eq. 10) then
              not_artclt1(i,j) = not_artclt1(i,j) +k
              not_artclt1(i,j) = not_artclt1(i,j) -7
           end if

        end do
     end do
     ii = ii+1
  end do
  print *,"#03",sum(b),sum(not_artclt1)

  ii =0
  do j = 1,100
     do i = 1,100

        if ( k .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        do while (ii < 2)
           b(i,j) = a1
           b(i,j) = b(i,j)/2
           b(i,j) = b(i,j) +7
           b(i,j) = b(i,j) *3
           b(i,j) = b(i,j) -1
           b(i,j) = b(i,j) *2
           b(i,j) = b(i,j)/2
           ii = ii+1
        end do

        if ( kk .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

     end do
  end do
  print *,"#04",sum(b),sum(not_artclt1),sum(not_artclt2)

  ii = 0
  do j = 1,100
     do i = 1,100
        do while (ii < 2) 
           c(i,j) = a2
           c(i,j) = c(i,j)/2
           c(i,j) = c(i,j) +7
           c(i,j) = c(i,j) *3
           c(i,j) = c(i,j) -1
           c(i,j) = c(i,j) *2
           c(i,j) = c(i,j)/2
           ii = ii+2
        end do

        if ( kk .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

     end do
  end do
  print *,"#05",sum(b),sum(c),sum(not_artclt1),sum(not_artclt2)

  ii = 0
  do j = 1,100
     do i = 1,100

        if ( k .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( kk .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        do while (ii < 3)
           c(i,j) = a2
           c(i,j) = c(i,j)/2
           c(i,j) = c(i,j) +7
           c(i,j) = c(i,j) *3
           c(i,j) = c(i,j) -1
           c(i,j) = c(i,j) *2
           c(i,j) = c(i,j)/2
           ii = ii +2
        end do
     end do
  end do
  print *,"#06",sum(b),sum(c),sum(not_artclt1),sum(not_artclt2)

  ii = 1
  do j = 1,100
     do i = 1,100
        d(i,j) = a3
        d(i,j) = d(i,j)/2
        d(i,j) = d(i,j) +7
        d(i,j) = d(i,j) *3
        d(i,j) = d(i,j) -1
        d(i,j) = d(i,j) *2
        d(i,j) = d(i,j)/2

        if ( kk .eq. 20) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        do while (ii < 3)
           b(i,j) = a1
           b(i,j) = b(i,j)/2
           b(i,j) = b(i,j) +7
           b(i,j) = b(i,j) *3
           b(i,j) = b(i,j) -1
           b(i,j) = b(i,j) *2
           b(i,j) = b(i,j)/2
           ii= ii+1
        end do

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
     end do
  end do

  print *,"#07",sum(b),sum(c),sum(d),sum(not_artclt1),sum(not_artclt2)
end program main
