#!/usr/bin/python
"""By listing the first six prime numbers: 
2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.

What is the 10001^(st) prime number?
"""
from math import sqrt

if __name__ == "__main__":

	pCounter = 0
	testNum = 1
	while(pCounter < 10001):
		testNum = testNum+1
		for tCounter in range(int(sqrt(testNum)),0,-1):
			if tCounter == 1:
				pCounter = pCounter+1
			elif testNum%tCounter == 0:
				break
	print testNum
