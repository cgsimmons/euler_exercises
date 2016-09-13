#A palindromic number reads the same both ways.
#The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

def isPalindrome(num)
  num_string = num.to_s
  return true if num_string.eql?(num_string.reverse)
  return false
end

palindrome = 0
mult = 100

begin
  for i in mult..999
    temp = i * mult
    palindrome = temp if isPalindrome(temp) && temp > palindrome
    raise if i == 999 && mult != 999
  end
rescue
  mult += 1
  retry
end

puts palindrome
