# SECTION A 

def subsets(array)
	answer = []

	array.each_with_index do |element, index|
		sub_length = 0
		while index + sub_length < array.length
			answer.push(array[index..index+sub_length])
			sub_length += 1
		end
	end
	return answer
end

puts subsets([2, 3, 4, 5])

def is_palindrome?(string, start, len)
	word = string[start..start + len - 1]

	letter_indices = word.length/2

	(0..letter_indices).each do |index|
		return false if word[index] != word[word.length-1-index]
	end
	return true

end

puts is_palindrome?("racecar", 0, 7)

def longest_palindrome(string)
	longest_len, longest_palindrome = 0, ""

	(0..string.length-1).each do |index|
		len = longest_len
		while index + len < string.length
			if is_palindrome?(string, index, len + 1)
				longest_len = len
				longest_palindrome = string[index..index + len]
			end

			len += 1
		end
	end
	return longest_palindrome
end

puts longest_palindrome("theracecarla")


# SECTION B

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

# p fast_intersection3([1, 2, 3, 4, 5, 6], [2, 4, 6])

def common_subsets(arr1, arr2)
	subsets(fast_intersection3(arr1, arr2))
end

def subsets(array)
	return [[]] if array.empty?
	root = array[0]
	subsets = subsets(array.drop(1))
	new_subsets = subsets.map { |subset| subset + [root] }

	subsets + new_subsets
end

p common_subsets([1, 2, 3, 4, 5], [2, 3, 4])

def canWin(array, index)
	positions_to_test = [index]
	checked_positions = []

	while !positions_to_test.empty?
		current_pos = positions_to_test.shift

		if array[current_pos] == 0
			return true
		end

		next_left = current_pos - array[current_pos]
		if (next_left >= 0 && next_left < array.length) && !checked_positions[next_left]
			checked_positions.push(current_pos)
			positions_to_test.push(next_left)
		end

		next_right = current_pos + array[current_pos]
		if (next_right >= 0 && next_right < array.length) && !checked_positions[next_right]
			checked_positions.push(current_pos)
			positions_to_test.push(next_right)
		end
	end

	return false

end

puts canWin([1, 2, 3, 4, 2, 0], 4)