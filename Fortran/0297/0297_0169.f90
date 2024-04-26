  call test1()
  call test2()
  call test3()
  call test4()
  end
!
  subroutine test1()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/
  integer n/1/

  do i=1,100
    if (a(i).eq.0) then
      n = p(i)
      a(i) = n
    endif
  enddo
  print*, "### TEST 1 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    if (n .ne. 1) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
!
  subroutine test2()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/
  integer n/1/ 

  do i=1,100
    if (a(i).eq.0) then
      n = p(i)
      a(i) = n
    endif
  enddo
  print*, "### TEST 2 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    if (n .ne. 1) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
!
  subroutine test3()
  integer a(100)/10*1,20*2,30*3,40*4/
  integer res/4/,res2/61/
  integer ind/0/
  integer vmax/0/

  do i=1,100
    if (vmax .lt. a(i)) then
      vmax = a(i)
      ind = i
    endif
  enddo
  print*, "### TEST 3 ###"
  if (vmax .ne. res) then
    print*, "NG"
  else
    if (ind .ne. res2) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
!
  subroutine test4()
  integer a(100)/10*1,20*2,30*3,40*4/
  integer res/4/,res2/61/
  integer ind/0/
  integer vmax/0/

  do i=1,100
    if (vmax .lt. a(i)) then
      vmax = a(i)
      ind = i
    endif
  enddo
  print*, "### TEST 4 ###"
  if (vmax .ne. res) then
    print*, "NG"
  else
    if (ind .ne. res2) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
