RSER<- read.csv(file="documents/mathematical modeling/MM Project Excel 3.csv", header=TRUE, sep=",")
RSER
a=.033     # P(HR)=a
b=.011      # P(E)=b
c=.008     # P(SF)=c  
d=.145     # P(1B)=d
e=.056     # P(2B)=e
f=.005     # P(3B)=f
1*a
(2*a)+f
(2*a)+e+f
(2*a)+b+c+d+e+f
(3*a)+(2*f)+e
(3*a)+(2*f)+b+c+d+e
(3*a)+(2*(e+f))+b+c+d
(4*a)+(3*f)+(2*e)+b+c+d
1*a
(2*a)+f
(2*a)+e+f
(2*a)+b+c+d+e+f
(3*a)+(2*f)+e
(3*a)+(2*f)+b+c+d+e
(3*a)+(2*(e+f))+b+c+d
(4*a)+(3*f)+(2*e)+b+c+d
1*a
(2*a)+f
(2*a)+e+f
(2*a)+b+d+e+f
(3*a)+(2*f)+e
(3*a)+(2*f)+b+d+e
(3*a)+(2*(e+f))+b+d
(4*a)+(3*f)+(2*e)+b+d










