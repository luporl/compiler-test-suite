real*16,dimension(2,3,2,2:1)::a


a = reshape((/0.0_16,-30.0_16,-100.0_16,-50.0_16,4.0_16,5.0_16,8.0_16,-11.0_16,6.0_16,-3.0_16,2.0_16,-400.0_16/), (/2,3,2,0/))
write(1,*) a
print *,'pass'
end
