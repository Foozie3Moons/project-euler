# The sum of the squares of the first ten natural numbers is:
#  12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is:
#  (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
#  numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred
#  natural numbers and the square of the sum.
## WANT:

max = 100
numbers = (1..max).to_a
def sum(numbers)
  sum = 0
  numbers.each do |number|
    sum += number
  end
  return sum
end
def square(number)
  product = number * number
  return product
end
def sum_of_squares(numbers)
  sum = 0
  numbers.each do |number|
    number_squared = square(number)
    sum += number_squared
  end
  return sum
end
def square_of_sum(numbers)
  product = sum(numbers) * sum(numbers)
  return product
end

puts sum_of_squares(numbers)
puts "The difference between the sum of the squares of the first #{max} " +
  "natural numbers and the square of them is " +
  "#{square_of_sum(numbers) - sum_of_squares(numbers)}."
