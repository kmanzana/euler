# Date started: 7/28/12

# Problem: 1
# Description

sum = 0
1000.times do |i|
  if i % 5 == 0 || i % 3 == 0
      sum += i
  end
end

puts sum