#!/usr/bin/ruby
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

def nextPrime(num, primes)
	found = false
	newPrime = num

	while !found
		newPrime += 1
		found = true if isPrime(newPrime, primes)
	end
	newPrime
end

def isPrime(num, primes)
	for div in primes
		return false if num % div == 0
	end
	true
end

def factor(factor_me, primes)
	div = 0
	for div in primes
		if factor_me % div == 0
			return factor_me / div
		end
	end

	while div < factor_me
		div = nextPrime(div, primes)
		primes.push(div)
		if factor_me % div == 0
			return factor_me / div
		end
	end
end

def findLargestFactor(factor_me)
	primes = [2]

	while primes.max < factor_me
		factor_me = factor(factor_me, primes)
	end
	primes.max
end

findLargestFactor(600851475143)
