#!/usr/bin/ruby
#By listing the first six prime numbers: 2, 3, 5, 7, 11,
#and 13, we can see that the 6th prime is 13.

#What is the 10,001st prime number?

def nextPrime(primes)
	found = false
	newPrime = primes[-1]

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

def findNthPrime(nth_prime)
  primes = [2]

  (nth_prime-1).times do
    primes.push(nextPrime(primes))
  end

  primes[-1]
end

puts findNthPrime(10001)
