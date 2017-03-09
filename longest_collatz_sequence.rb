=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

note: Once the chain starts the terms are allowed to go above one million.
=end

largest_chain = 0
largest_starting_number = 0
(1..1000000).each do |n|
  counter = 0
  starting_number = n
  until n == 1 do
    if n.even?
      n = n / 2
    elsif n.odd?
      n = n * 3 + 1
    end
    counter += 1
  end
  if counter > largest_chain
    largest_chain = counter
    largest_starting_number = starting_number
  end
end
puts "Largest starting number: #{largest_starting_number} & Largest chain #{largest_chain}"
