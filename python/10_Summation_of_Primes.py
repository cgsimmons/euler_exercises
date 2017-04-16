#!/usr/bin/python
"""Find the sum of all the primes below two million.
"""

from math import sqrt
def primer(testNum):
	for pcheck in range(3,(int(sqrt(testNum))+1),2):
		if(testNum%pcheck == 0):
			return False
	return True	


if __name__ == "__main__":

	sum = 2
	for index in range(3,2000000,2):
		if primer(index):
			sum += index
	print sum
