call test()
print *,'pass'
end
subroutine test()
integer i
i = exponent(3.8)
if (i.ne.2   )print *,'err'
i = exponent(-4.3)
if (i.ne.3   )print *,'err'
end
