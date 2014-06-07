# def digital_root (num)
# 	if num < 10
# 		return num
# 	else
# 		tens = num / 10 #23
# 		ones = num % 10	#5
# 		return digital_root(ones + tens)
# 	end
# end

# p digital_root(235)

# def caesar_cipher(string, num) 
# 	alphabet = ('a'..'z').to_a
# 	answer = []
# 	string.split("").each_with_index do |letter, index| 
# 		answer << alphabet[index % 25 + num]
# 	end
# 	return answer.join("")
# end

# p caesar_cipher("abcdefg", 2)

# def common_substrings(str1, str2)
# 	longest = ""
# 	len = 1;

# 	while len < str1.length
# 	start_index = 0
# 		while start_index < str1.length
# 			substring = str1[start_index..start_index + len - 1]
# 			longest = substring if ((str2.include?(substring)) && (substring.length > longest.length))
# 			start_index += 1
# 		end
# 		len += 1
# 	end
# 	return longest
# end

# p common_substrings("abcde", "cde")

# def sum_rec(array)
# 	if array.length == 0
# 		return 0
# 	else
# 		return array.pop + sum_rec(array)
# 	end
# end

# p sum_rec([])
# p sum_rec([3])
# p sum_rec([1, 3, 65, 7])

# def validIP? (string)
# 	strings = string.split(".").map! {|string| string.to_i}
# 	strings.each do |string| 
# 		return false unless (string >= 0 && string <= 255)
# 	end
# 	p true
# 	return true
# end

# validIP? ("33.3.27.33");

# def sum_from_file(filename)
# 	nums = File.readlines(filename).select{|line| line.first != "#"}.map{|line| line.to_i}
# 	nums.inject(:+)
# end

# def shuffle(array)
# 	new_array = []
# 	length = array.length

# 	while array.length != 0
# 		element_to_delete = array[rand(array.length)]
# 		new_array << element_to_delete
# 		array.delete(element_to_delete)
# 	end

# 	p new_array

# end

# shuffle([1, 2, 3, 4, 5])

# Array.prototype.myMap = function(fn) {
# 	var answer = [];

# 	this.forEach (function(el) {
# 		answer.push(fn(el))
# 		});
# 	return answer;
# }

# SELECT 
# employees.*
# FROM
# employees 
# JOIN 
# departments ON employee.department_id = department.id
# WHERE
# department.name = "given_name"

# SELECT 
# COUNT(*)
# FROM
# users;

# User.count;

# SELECT
# COUNT(*)
# FROM
# users
# WHERE 
# users.status == "active";

# User.where(status: "active").length;

# SELECT
# COUNT(*)
# FROM 
# users
# WHERE 
# users.last_visit BETWEEN DATETIME() AND given_time;

# User.where("last_visit > Time.now - given_time").length

# def folding_cipher(string)
# 	folded_alphabet = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]
# 	array = string.chars.map do |char|
# 		folded_alphabet[char]
# 	end

# 	return array.join("")
# end



























