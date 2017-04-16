#!/usr/bin/ruby
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.
require 'prime'
def sumOfPrimes(max)
  sum = 0
  Prime.each() do |prime|
    break if prime > max
    sum += prime
  end
  sum
end

puts sumOfPrimes(2000000)
