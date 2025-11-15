#!/usr/bin/python3

from decimal import getcontext, Decimal
import glob

#Define variable
pid=[]

#Get all Pi_Digits values from the Text file
listf = glob.glob('*.d')

#Check the maximum number of Pi Digit used in the Run
for f in listf:
    fpi=f.strip('_digits.d')
    fpi=fpi.strip('Pi_')
    pid.append(int(fpi))

#Set the maximum decimal precision value
pid.sort(reverse=True)
getcontext().prec = int(pid[0])
sumPi = Decimal(0)

#Read and Sum all Pi_Digits values from the Text file
for filename in listf:
    with open(filename) as f:
        y=f.readline()
        y=y.strip('PI: ')
        y=y.strip('\n')
        x = Decimal(y)
        f.close()
    sumPi = Decimal(sumPi+x)

#Show the result 
outfile = "total_pi.out"
with open(outfile, "w") as f:
  print("Total: ", sumPi, file=f)
  f.close()
