# SUBSET A

def fibs (num)
	if num == 0
		return []
	elsif num == 1
		return [0]
	elsif num == 2
		return [0, 1]
	else
		return fibs(num-1).push(fibs(num-1)[-1] + fibs(num-1)[-2])
	end
end

function isPalindrome (string) {
	for (i = 0; i < (string.length-1)/2; i++) {
		if (string[i] != string[string.length-i-1]) {
			return false
		}
	}
	return true
}

# SUBSET B
def validIP? (string)
	strings = string.split(".").map! {|string| string.to_i}
	strings.each do |string| 
		return false unless (string >= 0 && string <= 255)
	end
	p true
	return true
end

validIP? ("33.3.27.33");

def sum_from_file(filename)
	nums = File.readlines(filename).select{|line| line.first != "#"}.map{|line| line.to_i}
	nums.inject(:+)
end

def shuffle(array)
	new_array = []
	length = array.length

	while array.length != 0
		element_to_delete = array[rand(array.length)]
		new_array << element_to_delete
		array.delete(element_to_delete)
	end

	p new_array

end

shuffle([1, 2, 3, 4, 5])
