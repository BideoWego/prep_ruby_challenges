def uniques(array)
	unique = []
	array.each do |i|
		unique << i if not unique.include?(i)
	end
	unique 
end

def result(array)
	puts "The unique values in #{array.to_s} are: #{uniques(array).to_s}"
end

result([1, 2, 1])
result(["foo", "bar", "foo"])
result([[:foo], [:bar], [:foo], [:bar]])