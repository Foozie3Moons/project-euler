# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#  we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# Solution: 10473
# Time Elapsed: 51.971197 seconds

primes = []
start_time = Time.now()
_10001st_prime = false
possible_prime = 2
until _10001st_prime do
  is_prime = true
  half_of_possible_prime = possible_prime / 2
  number_checked = half_of_possible_prime
  until (is_prime == false || number_checked == 1) do
    if possible_prime % number_checked == 0
      is_prime = false
    end
    number_checked -= 1
  end
  if is_prime == true
    prime = possible_prime
    if !primes.include?(prime)
      primes.push prime
    end
  end
  possible_prime += 1
  if primes.length == 10001
    puts primes[10000]
    _10001st_prime = true
  end
end
end_time = Time.now()
puts "Total time elapsed: #{end_time - start_time} seconds"
