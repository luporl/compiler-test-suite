call test()
print *,'pass'
end
subroutine test()
mean(i,j) = (i+j)/2
n = mean(2,4)
if (n.ne.3   )print *,'err'
end
