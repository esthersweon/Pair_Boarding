# SECTION A 

def binary(num)
	answer = []
	i = 1

	while num > 0
		exp = 2**i

		if num >= exp
			answer.unshift(num%exp)
		else
			answer.unshift(1)
		end

		num-=(num%exp)
		i+=1
	end

	return answer.join("").to_i
end

puts binary(9)

def rec_factorial(n)
	if n == 1
		return 1
	else
		return n * rec_factorial(n-1)
	end
end

p rec_factorial(5)

def iter_factorial(n)
	answer = []
	until n == 0
		answer << n
		n -= 1
	end
	return answer.inject(:*)
end

p iter_factorial(5)

# SECTION B

def substrings(array_of_letters)
	answer = []
	index, len = 0, 0

	while index + len < array_of_letters.length
		answer <<  array_of_letters[index..index + len].join("")
		len += 1
	end

	return answer
end

# p substrings(['a', 'b', 'c'])

def max_unique_psub(string)
	answer = []
	letters = string.split("")

	letters.each_with_index do |letter, index|
		answer.concat(substrings(letters[index..-1]))
		start = 2

		while index + start < letters.length
			new_str = ([letters[index]] + letters[index+start..-1])
			answer.concat(substrings(new_str))
			start += 1
		end

	end

	return answer.uniq.last
end

p max_unique_psub("abcd")

def max_unique_psub2(str)
  letter_positions = str
    .split("")
    .each_with_index
    .sort_by { |letter, pos| [-letter.ord, pos] }

  psub = ""
  current_pos = -1
  letter_positions.each do |letter, pos|
    next if pos < current_pos
    psub << letter
    current_pos = pos
  end

  psub
end

p max_unique_psub2("abcd")

