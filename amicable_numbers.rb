# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.
require 'prime'
=begin
def amicable_number(a)
  b = get_divisors(a).inject(:+)
  return get_divisors(b).inject(:+) == a
end
=end

set = [2,2,2,5,5]

popped = set.popp
  [2,2,2,5,5].map {|num, index| }

def get_factors(num)
  prime_factors = num.prime_division.map {|factor, power| [factor, power]}
  p prime_factors
  # for 30, want 1, 2, 3, 5, 6, 10, 15, 30
  prime_factors = prime_factors.flat_map {|factor, power| power.times {|i| factor}}h
  power_set = powerset([2,2,2,5,5])
  divisors = power_set
  p divisors
  #divisors.push(1, power_set, num).flatten
  #p divisors.flatten.sort.uniq
end


#sum = (1..10000).map {|n| amicable_number(n)}.inject(:+)

p get_factors(200)

# 1, 2, 5, 10
# 1, 2, 4, 5, 10, 20
