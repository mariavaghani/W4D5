
# def my_min(arr)
# 	min_found = false
	
# 	until min_found
# 		min_found = true
# 		arr.each_with_index do |ele1, idx1|
# 			if min_ele > ele1
# 				min_ele = ele1
# 				min_found = false
# 				p min_ele
# 			end
# 		end
# 	end
# 	min_ele
# end

def my_min(arr)
    min_num = arr.first

    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            min_num = [ele1, ele2, min_num].min
        end
    end

    min_num
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


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# PHASE 1

# def largest_contiguous_subsum(list)
#     subarr = []
#     (0...list.length).each do |idx1|
#         (idx1...list.length).each do |idx2|
#             subarr << list[idx1..idx2].sum
#         end
#     end
#     subarr.max
# end

# PHASE 2

# def largest_contiguous_subsum(list)
#     largest_sum = list.first
#     (0...list.length - 1).each do |idx|
#         current_sum = [list[0..idx].sum, list[idx..-1].sum, list[idx], list[idx..-idx].sum, list[-1]].max
#         largest_sum = [current_sum, largest_sum].max
#     end

#     largest_sum
# end

def largest_contiguous_subsum(list)
    largest_sum = list.sum
    
    while list.length > 1
        if list[0] > list[-1]
            list.pop
        else
            list.shift
        end
        current_sum = list.sum
        largest_sum = current_sum if current_sum > largest_sum
    end

    largest_sum
end

# list = [5, 3, -7]
# largest_contiguous_subsum(list) # => 8