# Date started: 8/1/12

# Problem: 9
# Description: The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#    Find the sum of all the primes below two million.

METHOD = 1.1
VERBOSE = true
num = 10

primes = [2]
start = Time.now.to_f

numArr = [2]
(1...(num / 2)).to_a.each do |i|
  numArr << i * 2 + 1
end

indexArr = (0...numArr.length).to_a


newIndexArr = []
currentIndex = 1

loop do
  numIsPrime = true

  

  currentNum = numArr[indexArr[currentIndex]]
  
  indexArr.each do |primeIndex|
    prime = numArr[primeIndex]
    break if prime > (currentNum / 2)
    if currentNum % prime == 0
      numIsPrime = false
      break
    end
  end
  
if VERBOSE
puts "numArr: \t#{numArr}"
puts "prime indexes: \t#{indexArr}"
puts "currentIndex: \t#{currentIndex}"
puts "currentNum: \t#{currentNum}"
puts "numIsPrime: \t#{numIsPrime}\n\n"
end

  if numIsPrime
    # two methods
    # 1. check every number left in indexArr to see if % prime == 0 and delete it
    if METHOD == 1.0
      indexArr.each do |index|
        if numArr[index] % currentNum != 0 || numArr[index] == currentNum
          newIndexArr << index
        end
      end
	elsif METHOD == 1.1
	  indexArr.map! {|index| puts index }#index if numArr[index] % currentNum != 0 || numArr[index] == currentNum}
    end
	
    # 2. step up through numArr and ensure number index is not in indexArr
    if METHOD == 2
      currentStep = currentNum * 3 # exclude the first one since it's prime (and the even one)
      while currentStep <= numArr.last
        # capture numArr.index(currentStep) in local var?
        # allocate info to newIndexArr instead of deleting from indexArr?
        if indexArr.include?(numArr.index(currentStep))
          indexArr.delete(numArr.index(currentStep))
        end
        currentStep += currentNum
      end
    end
	
    currentIndex += 1
  else # numIsNotPrime
    # allocate to newIndexArr
	#newIndexArr = indexArr[0...numArr.index(currentNum)]
	#newIndexArr << indexArr[(numArr.index(currentNum) + 1)...indexArr.last]
	
	
    # delete directly from indexArr
    indexArr.delete(numArr.index(currentNum)) # slightly faster
	
    # leave currentIndex alone since an index was deleted
  end
  
  if METHOD == 1
    indexArr = newIndexArr
    newIndexArr = []
  end
  
  break if currentNum == numArr[indexArr.last]
end

sum = 0
indexArr.each do |index|
  sum += numArr[index]
end

puts "SUM: \t\t--#{sum}--"

puts "Time elapsed: #{Time.now.to_f - start}"