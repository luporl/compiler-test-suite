program main
integer :: arr(4),jj(1),kk(1),ll(1),nn(1)
character :: arr1(5)
real :: arr2(5)
complex :: arr4(5)
arr = [2,4,6,4]
arr1 = ['A','B','B','C','D']
arr2 = [2.2,3.3,4.4,5.5,4.4]
arr4 = [(2,3),(3,3),(4,4),(2,3),(3,3)]
jj = findloc(arr,4)
kk = findloc(arr1,'B')
ll = findloc(arr2,4.4)
nn = findloc(arr4,(3,3))
if(jj(1) /= 2)print*, 101
if(kk(1) /= 2)print*, 102
if(ll(1) /= 3)print*, 103
if(nn(1) /= 2)print*, 105
print*, "pass"
end 
