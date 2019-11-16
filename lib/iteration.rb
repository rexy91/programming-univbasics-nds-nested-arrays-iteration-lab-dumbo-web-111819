def join_ingredients(array)
	counter = 0
	new_array = []
	while counter < array.length
		new_array.push("I love " + array[counter][0] + " and " + array[counter][1] + " on my pizza")
		counter += 1 
	end
	new_array
end

def find(array)
	row_index = 0
	result_array = []
	while row_index < array.length do 
		larger_num = array[row_index][0]
		inner_index = 1
		while inner_index < array[row_index].length do 
			if array[row_index][inner_index] > larger_num
				larger_num = array[row_index][inner_index]
			end
			result_array << larger_num
			inner_index += 1
		end
		row_index += 1
	end
	result_array
end

puts find_larger(array_2)
def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
	total = 0 
	src.each do |nums|
		if nums[0] % 2 == 0 and nums[1] % 2 == 0
			total += (nums[0] + nums[1])
		end
	end
	total 
end

