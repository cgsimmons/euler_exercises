#2520 is the smallest number that can be divided by each
#of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly
#divisible by all of the numbers from 1 to 20?

found = false
num = 20
while !found do
  for i in 1..19
    if num % i != 0
      found = false
      break
    else
      found = true
    end
  end
  if found == false
    num += 20
  end
end

puts num
