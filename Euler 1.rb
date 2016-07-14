# Find the sum of all the multiples of 3 or 5 below 1000.
sum = 0 
for i in 1...1000
	sum += i % 3 == 0 || i % 5 == 0 ? i : 0 
end
sum