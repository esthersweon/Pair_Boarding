# SECTION A

def matrix_region_sum(matrix, top_left, bottom_right)
	left_x = top_left[0]
	right_x = bottom_right[0]
	left_y = top_left[1]
	right_y = bottom_right[1]
	answer = 0

	(left_x..right_x).each do |x| 
		(left_y..right_y).each do |y|
			answer += matrix[x][y]
		end
	end

	answer

end

puts matrix_region_sum([[1, 3, 5], [2, 4, 6], [7, 8, 9]], [0, 1], [2, 1])

def merge_sort(array)
	answer = []

	return array if array.length < 2

	half = array.length/2
	left = array[0...half]
	right = array[half..-1]

	sorted_left = merge_sort(left)
	sorted_right = merge_sort(right)

	merge(sorted_left, sorted_right)
end

def merge(left, right)
	answer = []
	until left.empty? || right.empty?
		if left.first < right.first
			answer << left.shift
		else
			answer << right.shift
		end
	end

	answer.concat(left).concat(right)
end

puts merge_sort([5, 3, 4, 7, 2, 1])

SECTION B

def binary_search(array, target)
	return nil if array.count == 0 

	midpoint = array.length/2

	if target < array[midpoint]
		binary_search(array.take(midpoint), target)
		# p array.take(midpoint)
	elsif target = array[midpoint]
		midpoint
	else
		answer = binary_search(array.drop(midpoint + 1), target)
		# p array.drop(midpoint + 1)
		answer.nil? ? nil : (midpoint + 1) + answer
	end
end

puts binary_search([1, 2, 3, 4, 5, 6, 7], 3)


def productify(array)
	answer = []
	
	array.each_with_index do |num, index|
		before = index == 0 ? 1 : array[0...index].inject(1) {|result, element| result * element }
		after = array[index+1..-1].inject(1) {|result, element| result * element }
		answer[index] = before * after
		p answer[index]
	end

	return answer
end

p productify([1, 2, 3])
