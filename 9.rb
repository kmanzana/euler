# Date sarted: 8/1/12

# Problem: 9
# Description: A Pythagorean triplet is a set of three natural numbers, a  b  c, for 
#  which,
#     a^2 + b^2 = c^2
#  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#  Find the product abc.

1.upto(1000) do |i|
  i.upto(1000) do |j|
    j.upto(1000) do |k|
	  if i * i + j * j == k * k
	    #puts "i: #{i} j: #{j} k: #{k}"
		if i + j + k == 1000
          puts "answer: #{i * j * k}"
          puts "a = #{i}, b = #{j}, c = #{k}"
		end
	  end
	end
  end
end
	  