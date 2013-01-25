# Date started: 7/28/12

# Problem: 2\3
# Description: The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600 851 475 143 ?

num = 600851475143
factor = 0

i = 2

while i <= num do
  if num % i == 0
  puts i
    while num % i == 0
	  num = num / i
	end
	factor = i
  end
  i +=1
end

puts "answer: #{factor}"