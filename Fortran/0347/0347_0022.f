      dimension a(10),b(10),c(10),d(10),e(10),f(20)
      data a/10*1.0/,b/10*2.0/
      data c/10*3.0/,d/10*4.0/
      data e/10*5.0/,f/20*6.0/
      s=0
      j=0
      do 10 i=1,10
        a(i) = b(i) + c(i)
        goto  11
  13    s = s + f(j)
        if (j.ge.10) goto 10
        goto  11
  12    e(i)=f(i)+i
        goto  13
  11    d(i) = 0.0
        j=j+1
        goto  12
  19    goto  12
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      write(6,*) e
      write(6,*) f
      write(6,*) s
      stop
      end
