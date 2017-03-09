# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# Answer:
# Time Elapsed:

require 'prime'

start_time = Time.now()
ceiling = 200000000
sum = 0

primes = Prime.take_while { |p| p < ceiling}

primes.each do |prime|
  sum += prime
end


puts "All primes from 1 through #{ceiling}"
puts "The sum of all primes: #{sum}"
#puts "Possible primes: #{possible_primes}"
#puts "Primes: #{primes}"
puts "The total amount of primes: #{primes.length}"
end_time = Time.now()
puts "Total time elapsed: #{end_time - start_time} seconds"
