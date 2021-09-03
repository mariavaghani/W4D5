# PHASE 1.


def first_anagram?(str1, str2)
    new_arr = str1.split("").permutation(str1.length).map(&:join)
    new_arr.include?(str2)
end

def anagram?(str1,str2)
    str1.each_char do |char|
        
    end
end


p anagram?("elvis", "lives")    #=> true
p anagram?("gizmo", "sally")    #=> false