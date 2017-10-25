# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palendrome(num)
  return num.to_s.reverse === num.to_s
end

largest_palendrome = 0

(100..999).each do |x|
  (100..999).each do |y|
    if is_palendrome(x * y)
      if x * y > largest_palendrome
        largest_palendrome = x * y
      end
    end
  end
end

puts largest_palendrome
