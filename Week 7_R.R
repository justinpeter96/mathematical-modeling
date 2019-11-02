# CALCULATED ANSWERS FOR INTERIOR POINTS
A=array(c(1,0,-.25,0,0,0,0,0,1,-.25,0,-.25,0,0,-.25,-.25,1,-.25,0,-.25,0,0,0,-.25,1,0,0,-.25,0,-.25,0,0,1,-.25,0,0,0,-.25,0,-.25,1,-.25,0,0,0,-.25,0,-.25,1),c(7,7))
b=c(-.25,0,0,.5,0,-.25,0)
solve(A,b)
# RELAXATION METHOD APPLICATION
relaxation <- function(n){
  aa=bb=cc=dd=ee=ff=gg=0
  for(i in 1:n){
    aa = (-1-1+ 1 +cc)/4
    bb = (-1+1+ cc+ee)/4
    cc = (aa+bb+dd+ff)/4
    dd = (1 + 1+cc+gg)/4
    ee = (-1+ 1+bb+ff)/4
    ff = (cc+ee+gg- 1)/4
    gg = (dd+ff-1 + 1)/4
  }
  return(c(aa, bb, cc, dd, ee, ff,gg))
}
relaxation(1)
relaxation(2)
relaxation(4)
relaxation(8)
relaxation(16)
