MODULE XU
LOGICAL ,ALLOCATABLE,DIMENSION(:,:,:):: NA
PUBLIC
END MODULE XU
USE XU
ALLOCATE (NA(-76:-74,1:1,69:70))
PRINT *,"OK"
STOP
END
