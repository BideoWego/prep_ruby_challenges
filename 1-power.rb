def power(n, e)
	return 1 if e == 0
	accumulator = n
	(e - 1).times do
		accumulator *= n
	end
	accumulator
end

def result(n, e)
	s = "The result of #{n.to_s}^#{e.to_s} is #{power(n, e).to_s}"
	puts s
end

result(4, 0)
result(4, 2)
result(3, 2)
result(3, 4)