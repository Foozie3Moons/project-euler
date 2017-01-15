# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#  we can see that the 6th prime is 13.
# What is the 10 001st prime number?

primes = [2, 3, 5]

_10001st_prime = false
index_number = 10
nh = n / 2

until _10001st_prime do
  2.upto(nh) do |number|
    puts number
    is_prime = false
    if n % number == 0
      break
    end
    is_prime = true
    if primes.include?(number)
      primes.push number
    end
    n += 1
    break
  end
  if primes.length == 6
    _10001st_prime = true
    puts primes[5]
  end
end
