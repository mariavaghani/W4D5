def two_sum?(arr, target_sum)
   (0...arr.length).each do |idx_first|
        (idx_first+1 ... arr.length).each do |idx_last|
            return true if arr[idx_first] + arr[idx_last] == target_sum
        end
   end
   false
end

# def okay_two_sum?(arr, target_sum)
#     sorted_arr = arr.sort
#     (1...sorted_arr.length).each do |idx|
#         return true if sorted_arr[idx-1] + sorted_arr[idx] == target_sum
#          if sorted_arr[idx-1] + sorted_arr[idx] > target_sum
#     end
#     false
# end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 8) # => should be true
p okay_two_sum?(arr, 10) # => should be false