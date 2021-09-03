
def my_min(arr)
	min_found = false
	
	until min_found
		min_found = true
		arr.each_with_index do |ele1, idx1|
			if min_ele > ele1
				min_ele = ele1
				min_found = false
				p min_ele
			end
		end
	end
	min_ele
end


# PHASE 2 O(n)

# def my_min(arr)
# 	min_ele = arr.first
# 	arr.each_with_index do |ele1, idx1|
# 		if ele1 < min_ele
# 			min_ele = ele1
		
# 		end
# 	end
# 	min_ele
# end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5