      program main
      integer*4 ten
      integer*4 three
      integer*2 a(3,3,3,3,3,3,3),b(3,3,3,3,3,3,3),c(3,3,3,3,3,3,3)
      data ten/10/
      data three/3/
*
      do 10 i7=1,three
      do 10 i6=1,3
      do 10 i5=1,three
      do 10 i4=1,3
      do 10 i3=1,3
      do 10 i2=1,three
      do 10 i1=1,three
        a(i1,i2,i3,i4,i5,i6,i7)=(i1+i2+i3+i4+i5+i6+i7)*ten
        b(i1,i2,i3,i4,i5,i6,i7)=(i1+i2+i3+i4+i5+i6+i7)*three
        c(i1,i2,i3,i4,i5,i6,i7)=(i1+i2+i3+i4+i5+i6+i7)*ten*three
   10 continue
*
      do 20 i7=1,three
      do 20 i6=1,3
      do 20 i5=1,three
      do 20 i4=1,3
      do 20 i3=1,3
      do 20 i2=1,three
      do 20 i1=1,three
        if (((i1.eq.i3).and.(i1.eq.i5).and.(i1.eq.i7)).and.
     c      ((i2.eq.i4).and.(i4.eq.i6)).and.
     c      (i1.lt.i2).and.((i2-1).gt.1).and.((i2-1).le.i1)) then
          a(i1,i2,i3,i4,i5,i6,i7)=a(i1,i2,i3,i4,i5,i6,i7)
     c                           -c(i1,i2,i3,i4,i5,i6,i7)/three
        else
          a(i1,i2,i3,i4,i5,i6,i7)=a(i1,i2,i3,i4,i5,i6,i7)
     c                           *b(i1,i2,i3,i4,i5,i6,i7)
     c                           /(i1+i2+i3+i4+i5+i6+i7)
        endif
*
        if ((i1.eq.i2).and.(i2.eq.i3).and.(i3.eq.i4).and.(i4.eq.i5)
     c     .and.(i5.eq.i6).and.(i6.eq.i7).and.(i4.eq.3)) then
          a(i1,i2,i3,i4,i5,i6,i7)=b(i1,i2,i3,i4,i5,i6,i7)
     c                           +c(i1,i2,i3,i4,i5,i6,i7)
          goto 30
        endif
*
        if ((i1.eq.i2).and.(i2.eq.i3).and.(i3.eq.i4)
     c     .and.(i4.eq.i5).and.(i5.eq.i6).and.(i2.eq.2)) then
          j=1
   21     a(i1,i2,i3,i4,i5,i6,j)=(((i1**2)/i3)/i4)*three
          j=j+1
          if (j.le.3) goto 21
        endif
   20 continue
*
   30 do 40 i7=1,three
      do 40 i6=1,3
      do 40 i5=1,three
      do 40 i4=1,3
      do 40 i3=1,3
      do 40 i2=1,three
      do 40 i1=1,three
        if ((i1.eq.i2).and.(i2.eq.i3).and.(i3.eq.i4)
     c     .and.(i4.eq.i5).and.(i5.eq.i6)) then
          if ((i1.eq.3).and.(i7.eq.i1)) then
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c          (21*(three+ten*three))) then
              write (6,*) '???? ng ????  a(3,3,3,3,3,3,3)=',
     c                    a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          else
            if (i1.eq.2) then
              if (a(i1,i2,i3,i4,i5,i6,i7).ne.three) then
                write (6,*) '???? ng ????  a(2,2,2,2,2,2,n)=',
     c                      a(i1,i2,i3,i4,i5,i6,i7)
                goto 50
              endif
            else
              if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c            c(i1,i2,i3,i4,i5,i6,i7)) then
                write (6,*) '???? ng ????  a(',i1,',',i2,',',i3,',',
     c            i4,',',i5,',',i6,',',i7,')=',a(i1,i2,i3,i4,i5,i6,i7)
                goto 50
              endif
            endif
          endif
        else
          if ((i1.eq.2).and.(i2.eq.3).and.(i3.eq.2).and.(i4.eq.3)
     c       .and.(i5.eq.2).and.(i6.eq.3).and.(i7.eq.2)) then
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.(three-3)) then
              write (6,*) '???? ng ????  a(2,3,2,3,2,3,2)=',
     c                    a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          else
            if (a(i1,i2,i3,i4,i5,i6,i7).ne.
     c          c(i1,i2,i3,i4,i5,i6,i7)) then
              write (6,*) '???? ng ????  a(',i1,',',i2,',',i3,',',
     c          i4,',',i5,',',i6,',',i7,')=',a(i1,i2,i3,i4,i5,i6,i7)
              goto 50
            endif
          endif
        endif
   40 continue
*
      write (6,*) '**** ok ****'
   50 stop
      end
