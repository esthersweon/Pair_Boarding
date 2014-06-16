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