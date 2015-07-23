def factorial(n)
	i = accumulator = 1
	while i <= n
		accumulator *= i
		i += 1
	end
	accumulator
end

def result(n)
	puts "The result of factorial(#{n.to_s}) is: #{factorial(n).to_s}"
end

result(3)
result(5)
result(11)
result(18)
result(26)
result(35)
result(45)