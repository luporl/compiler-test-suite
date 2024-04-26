subroutine sub1(m,n,k)
  common /comdata/A(10,10),B(10,10),C(10,10),R1(10,10),R2(10,10),R3(10,10)
  real(4) RR1(10,10), RR2(10,10), RR3(10,10)
  integer(4) :: m,n,k,i,j,L
  real(4) :: mul,answer1,answer2,answer3
  real(4) :: RR1_answer, RR2_answer, RR3_answer
  equivalence(A(10,10), mul) 
  RR1 = 1.0
  RR2 = 2.0
  RR3 = 3.0
  RR1_answer = 0.0
  RR2_answer = 0.0
  RR3_answer = 0.0

  do i = 1, m
    do j = 1,n
      do L = 1,k
        answer1 = R1(L,j) * mul
        answer2 = R2(L,j) * mul
        answer3 = R3(L,j) * mul
        RR1(L,j)=RR1(L,j) + A(j,L)*answer1
        RR2(L,j)=RR2(L,j) + B(j,L)-answer2
        RR3(L,j)=RR3(L,j) + answer3
      enddo
    enddo
  enddo
  do i = 1, 10
    do j = 1, 10
      RR1_answer = RR1_answer+RR1(j,i)
      RR2_answer = RR2_answer+RR2(j,i)
      RR3_answer = RR3_answer+RR3(j,i)
    enddo
  enddo
  if (RR1_answer .ne. 4840100.00) then
     write(6,*) "NG"
  else if (RR2_answer .ne. -533300.000) then
     write(6,*) "NG"
  else if (RR3_answer .ne. 660300.000) then
     write(6,*) "NG"
  else
    write(6,*) "OK"
  endif
end

  common /comdata/A(10,10),B(10,10),C(10,10),R1(10,10),R2(10,10),R3(10,10)
  do i = 1,10
    do j = 1,10
        A(i,j) = i*2
        B(i,j) = i*3
        C(i,j) = i*4
        R1(i,j) = i*4
        R2(i,j) = i*5
        R3(i,j) = i*6
    enddo
  enddo
  call sub1(10,10,10)
end
