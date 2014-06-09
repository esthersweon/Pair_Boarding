# SUBSET A

def digital_root (num)
	if num < 10
		return num
	else
		tens = num / 10 #23
		ones = num % 10	#5
		return digital_root(ones + tens)
	end
end

p digital_root(235)

def caesar_cipher(string, num) 
	alphabet = ('a'..'z').to_a
	answer = []
	string.split("").each_with_index do |letter, index| 
		answer << alphabet[index % 25 + num]
	end
	return answer.join("")
end

p caesar_cipher("abcdefg", 2)

# SUBSET B

def common_substrings(str1, str2)
	longest = ""
	len = 1;

	while len < str1.length
	start_index = 0
		while start_index < str1.length
			substring = str1[start_index..start_index + len - 1]
			longest = substring if ((str2.include?(substring)) && (substring.length > longest.length))
			start_index += 1
		end
		len += 1
	end
	return longest
end

p common_substrings("abcde", "cde")

def sum_rec(array)
	if array.length == 0
		return 0
	else
		return array.pop + sum_rec(array)
	end
end

p sum_rec([])
p sum_rec([3])
p sum_rec([1, 3, 65, 7])
