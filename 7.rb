# Date sarted: 7/29/12

# Problem: 7
# Description: By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can
# see that the 6th prime is 13.
# What is the 10 001st prime number?

COUNT = 10001
primes = [2]
i = 3


while primes.length < COUNT
  prime = true
  
  primes.each do |j|
    if i % j == 0
	  prime = false
      break
    end
  end

  primes << i if prime

  i += 1
  
  puts primes.length.to_s + " " + primes.last.to_s
end

puts primes.last