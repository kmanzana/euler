# Date started: 7/29/12

# Problem: 5
# Description: 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers 
# from 1 to 20?

answer = 1
FINAL = 20

1.upto FINAL do |i|
  factors = []
  
  if answer % i != 0
    2.upto i do |j|
      if i % j == 0
	    factors << j
      end
    end
  
    factors.each do |factor|
      while answer % i != 0
        answer = answer * factor
	  end
    end
  end
end

puts answer