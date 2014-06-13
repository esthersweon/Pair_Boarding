# SECTION A

def jumble_sort(string, alphabet)
	alphabet_hash = {}
	alphabet.each_with_index { |letter, index| alphabet_hash[letter] = index }
	string.chars.sort_by {|char| alphabet_hash[char]}.join
end

puts jumble_sort("cats", ['s', 't', 'a', 'c'])

def weighted_random_index(arr)
	total = arr.inject(:+)
	value = rand(total)

	p value

	current_pos = 0
	arr.each_with_index do |num, idx|
		current_pos += num
		return idx if value < current_pos
	end
end

puts weighted_random_index([4, 6, 8])

# SECTION B 

def move_zeros(arr)
	zeros = arr.select {|element| element == 0}
	zero_count = zeros.count
	arr.delete(0)

	zero_count.times do
		arr.push(0)
	end

	return arr
end

puts move_zeros([1, 2, 0, 3, 4, 0, 5, 6, 0])

def look_and_say(arr)
	current_val = arr[0]
	current_count = 0
	answer = []

	arr.each_with_index do |element, index|
		current_count = 0 if current_val != element
		current_count += 1
		current_val = arr[index]

		next if arr[index + 1] == element

		answer.push([current_count, current_val])
	end

	return answer
end


look_and_say([4, 2, 1, 1, 1, 4, 3, 3])






