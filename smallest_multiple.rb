# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

## WANT: while false, for each number check to see if the number is divisible
######## by every number in divisible_numbers. Return true if the number is
######## divisible by 20.

start_time = Time.new()
divisible_numbers = (1..20).to_a
correct_number = false
number_checked = 3000000
is_divisible = false
until correct_number do
  puts number_checked
  divisible_numbers.each do |number|
    if number_checked % number != 0
      number_checked += 20
      break
    end
    if number % 20 == 0
      end_time = Time.new()
      puts "The correct number is: #{number_checked}"
      puts "This program took: #{end_time - start_time} seconds."
      correct_number = true
    end
  end
end
=begin
def generate_primes(upper_limit) do
  primes = [2]
  is_prime = true
  counter = 0
  until !is_prime do+

  end
end
=end
