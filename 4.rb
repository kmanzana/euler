# Date started: 7/29/12

# Problem: 4
# Description: A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

pal = 0

100.upto 999 do |i|
  100.upto 999 do |j|
    tmp = i * j
    pal = i * j if tmp.to_s == tmp.to_s.reverse && tmp > pal
  end
end

puts pal