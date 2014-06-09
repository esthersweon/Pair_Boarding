# SUBSET A

def uniq_subs (string)
	length = string.length
	answer = {} 

	(0..length-1).each do |i|
		(i..length-1).each do |j|
			answer[(string[i..j])] = true
		end
	end

	answer.keys
end

# p uniq_subs ('mom')

def max_sub_sum(arr)
	max_sum = 0
	max_sub_array = []

	starting = 0

	(arr.length-1).times do |i|
		sub_array_sum = arr[starting..starting + i].inject(:+)
		sub_array = arr[starting..starting + i]

		if sub_array_sum > max_sum
			max_sum = sub_array_sum 
			max_sub_array = arr[starting..starting + i]
		end

	starting += 1
	end

	return max_sub_array
end

# p max_sub_sum([3, 1, -4, 7, 3, -3, 2, -4])


# SUBSET B
def silly_years (year)
	answer = []
	i = 0
	
	loop do 
		left_year_digits = (year - i).to_s.split("").map {|l| l.to_i}
		right_year_digits = (year + i).to_s.split("").map {|l| l.to_i}

		if left_year_digits[0..1].join.to_i + left_year_digits[2..3].join.to_i == left_year_digits[1..2].join.to_i
			answer.push(left_year_digits.join.to_i)
			break if answer.count == 10
		end

		if right_year_digits[0..1].join.to_i + right_year_digits[2..3].join.to_i == right_year_digits[1..2].join.to_i
			answer.push(right_year_digits.join.to_i)
			break if answer.count == 10
		end
			
		i += 1
	end

	return answer
end

# p silly_years(1989)

def pair_sum (array, target)
	answer = []

	(0..array.length-1).each do |i|
		(i..array.length-1).each do |j|
			answer.push([array[i], array[j]]) if array[i] + array[j] == target
		end
	end

	return answer
end

# p pair_sum([-1, 3, -2, 4, -3, 1], 0)

