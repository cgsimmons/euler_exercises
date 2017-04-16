#!/usr/bin/python
"""Find the only Pythagorean triplet, {a, b, c}, for which a + b + c = 1000.
   Find the product of abc.	
"""

from math import sqrt

if __name__ == "__main__":

	for a in range(1,500,1):
		for b in range(a+1,1000,1):

			if sqrt((a**2)+(b**2)) == int(sqrt((a**2)+(b**2))):
				if (a+b+int(sqrt(((a**2)+(b**2)))))==1000:
					print a*b*int(sqrt((a**2)+(b**2)))
					exit(0)
				
