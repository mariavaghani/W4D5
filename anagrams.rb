# PHASE 1.


# def first_anagram?(str1, str2)
#     new_arr = str1.split("").permutation(str1.length).map(&:join)
#     new_arr.include?(str2)
# end

# def second_anagram?(str1,str2)
#     str2 = str2.split("")

#     until str2.empty?
#         str1.each_char.with_index do |char, idx|
#             return false unless str2.include?(char)
#             str2.delete_at(str2.find_index(char))
#         end
#     end
#     true
# end


# def third_anagram?(str1, str2)
#     str1.chars.sort == str2.chars.sort
# end

# def fourth_anagram?(str1, str2)
#     str1_hash = Hash.new(0)
#     str2_hash = Hash.new(0)

#     str1.each_char { |char| str1_hash[char] += 1 }
#     str2.each_char { |char| str2_hash[char] += 1 }

#     str1_hash == str2_hash
# end

def fourth_anagram?(str1, str2)
    str_hash = Hash.new(0)

    str1.each_char { |char| str_hash[char] += 1 }
    str2.each_char { |char| str_hash[char] -= 1 }

    str_hash.values.all? { |value| value == 0 }
end

p fourth_anagram?("elvis", "lives")    #=> true
p fourth_anagram?("gizmo", "sally")    #=> false