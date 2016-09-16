#A Pythagorean triplet is a set of three natural numbers,
#a < b < c, for which,
#a2 + b2 = c2

#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

sum = 0
a = 0
b = 1
c = 0

while sum != 1000
  a += 1
  b = a
  while a + 2*b < 1000
    b += 1
    c = Math.sqrt(a*a + b*b)
    if c % 1 == 0         #check that sqrt returned a whole number
      c = c.to_i
      sum = a+b+c
      break if sum == 1000
    end
  end
end

puts a*b*c
