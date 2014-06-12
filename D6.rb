# SECTION A 

# def subsets(array)
# 	answer = []

# 	array.each_with_index do |element, index|
# 		sub_length = 0
# 		while index + sub_length < array.length
# 			answer.push(array[index..index+sub_length])
# 			sub_length += 1
# 		end
# 	end
# 	return answer
# end

# puts subsets([2, 3, 4, 5])

# def longest_palindrome(string)
# end

SECTION B

def fast_intersection1(arr1, arr2)
	arr1.select { |element| arr2.include?(element) }
end

puts fast_intersection1([1, 2, 3, 4, 5, 6], [2, 4, 6])

def fast_intersection2(arr1, arr2)
	arr1, arr2 = arr1.sort, arr2.sort
	one_index, two_index = 0, 0
	answer = []

	while one_index < arr1.length && two_index < arr2.length
		case arr1[one_index] <=> arr2[two_index]
		when -1
			one_index += 1
		when 0
			answer.push(arr1[one_index])
			one_index += 1
			two_index += 1
		when 1
			two_index += 1
		end
	end

	return answer

end

puts fast_intersection2([1, 2, 3, 4, 5, 6], [2, 4, 6])

require 'set'
def fast_intersection3(arr1, arr2)
	set = Set.new

	arr1.each { |element| set << element}
	arr2.select { |element| set.include?(element) }
end

p fast_intersection3([1, 2, 3, 4, 5, 6], [2, 4, 6])

def common_subsets

end

def canWin
end