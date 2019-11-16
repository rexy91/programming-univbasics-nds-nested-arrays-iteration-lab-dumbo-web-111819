def join_ingredients(array)
	counter = 0
	new_array = []
	while counter < array.length
		new_array.push("I love " + array[counter][0] + " and " + array[counter][1] + " on my pizza")
		counter += 1 
	end
	new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  result_array = []
  outter_index = 0
  while outter_index < src.length do
    larger_num = src[outter_index][0]
    inner_index = 0
    while inner_index < src[outter_index].length do
        if src[outter_index][inner_index] > larger_num
          larger_num = src[outter_index][inner_index]
          result_array.push(larger_num)
        end
        inner_index += 1 
    end
    
    outter_index += 1 
   end
   return result_array
end

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

