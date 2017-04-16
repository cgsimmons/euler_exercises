#!/usr/bin/ruby
#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385

#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025

#Hence the difference between the sum of the squares of the
#first ten natural numbers and the square of the sum is
#3025 − 385 = 2640.

#Find the difference between the sum of the squares of the
#first one hundred natural numbers and the square of the sum.

def diffOfSumOfSquares(max_value)
  sumOfSquares = 0
  squareOfSum = 0

  for i in 1..max_value
    sumOfSquares += i**2
    squareOfSum += i
  end
  squareOfSum *= squareOfSum
  squareOfSum - sumOfSquares
end

puts diffOfSumOfSquares(100)
