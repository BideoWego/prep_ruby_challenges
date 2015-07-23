def combinations(left, right)
	combined = []
	left.each do |l|
		right.each do |r|
			combined << l.to_s + r.to_s
		end
	end
	combined
end

def result(left, right)
	puts "The combinations of #{left.to_s} and #{right.to_s} are: #{combinations(left, right).to_s}"
end

result(['on', 'in', 'out', 'off'], ['ramp', 'top', 'bottom', 'board'])