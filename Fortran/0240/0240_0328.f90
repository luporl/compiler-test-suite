integer,dimension(10):: a,b,c
a = (/ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 /)
b = (/-5,-3,-1, 1, 3, 5, 7, 9,11,13 /)
where (a>b)
c = a
elsewhere (a==b)
c = 0
elsewhere
c = b
end where
print *,'pass'
end
