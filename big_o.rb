

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

def my_min(arr)
	min_ele = arr.first
	arr.each_with_index do |ele1, idx1|
		if ele1 < min_ele
			min_ele = ele1
		
		end
	end
	min_ele
end


# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# PHASE 1

def largest_contiguous_subsum(list)
    subarr = []
    (0...list.length).each do |idx1| # n times
        (idx1...list.length).each do |idx2|# n times 
            subarr << list[idx1..idx2].sum# n^2(2*n)
        end
    end
    subarr.max # 2n^3 +n => n^3
end

# PHASE 2



def largest_contiguous_subsum(list)
	largest_sum = list.sum
	current_sum = largest_sum
	while list.length > 1
		if list[0] > list[-1]
			current_sum = current_sum - list.pop
		else
			current_sum = current_sum - list.shift
		end
		largest_sum = current_sum if current_sum > largest_sum
	end

	largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])

list = [-2, 10, -6, 12, -6, 1]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])