def overlap(r1, r2)
	r1 = {
		:xmin => r1[0][0],
		:xmax => r1[1][0],
		:ymin => r1[0][1],
		:ymax => r1[1][1]
	}
	r2 = {
		:xmin => r2[0][0],
		:xmax => r2[1][0],
		:ymin => r2[0][1],
		:ymax => r2[1][1]
	}
	intersect = {
		:xmin => 0,
		:xmax => 0,
		:ymin => 0,
		:ymax => 0
	}

	leftmost = (r1[:xmin] < r2[:xmin]) ? r1 : r2
	lowest = (r1[:ymin] < r2[:ymin]) ? r1 : r2
	rightmost = (r1[:xmin] > r2[:xmin]) ? r1 : r2
	highest = (r1[:ymin] > r2[:ymin]) ? r1 : r2

	intersect[:xmin] = rightmost[:xmin]
	intersect[:xmax] = leftmost[:xmax]
	intersect[:ymin] = highest[:ymin]
	intersect[:ymax] = lowest[:ymax]

	width = intersect[:xmax] - intersect[:xmin]
	height = intersect[:ymax] - intersect[:ymin]

	return width * height > 0
end

def result(r1, r2)
	puts "The result of overlap(#{r1.to_s}, #{r2.to_s}) is: #{overlap(r1, r2).to_s}"
end

result([ [0,0],[3,3] ], [ [1,1],[4,5] ])
result([ [0,0],[1,4] ], [ [1,1],[3,2] ])
result([ [0,0],[5,5] ], [ [5,0],[6,5] ])
result([ [1,1],[5,5] ], [ [2,2],[6,6] ])