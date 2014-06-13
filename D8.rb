# SECTION A

# Sums Upon Sums

# I have a scrambled list of n unique integers between 0 and n.
# I am looking for the missing number

# if I use O(nlog(n)) time: 
# 	sort the list
# 	go through to look for the gap

# if I use O(n) time: 
# 	stick number in hash set 
# 	go through looking for the missing number

# if I use O(1) time: 
# 	expected sum of first n numbers is (n+1)(n/2)
# 	sum all numbers and subtract actual from expected sum
# 	answer is missing number

class MaxStack

	def initialize
		@values = []
		@max_value = 0
	end

	def push(value)
		@max_value = value if value > @max_value
		@values.push([value, @max_value])
	end

	def pop
		@values.last[0]
	end

	def max
		@values.last[1]
	end

end

stack = MaxStack.new
p stack.push(4)
p stack.push(3)
p stack.push(5)
p stack.push(2)
p stack.pop
puts stack.max

# SECTION B

class StackQueue
	def initialize
		@in, @out = [], []
	end

	def enqueue(value)
		@in.push(value)
	end

	def dequeue
		if @out.empty?
			@out.push(@in.pop) until @in.empty?
		end

		@out.pop
	end
end

def largest_continuous_subsum(arr)
	best_sum = 0
	arr.each_with_index do |num, idx|
		best_sum = arr[0..idx].inject(:+)
	end
	return best_sum
end

puts largest_continuous_subsum([1, 2, 3])
