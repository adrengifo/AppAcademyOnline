require "byebug"
def select_even_nums(array1)
    array1.select(&:even?)
end

def reject_puppies (array1)
    array1.reject{ |dog| dog['age'] <= 2}
end

def count_positive_subarrays (array1)
    array1.count {|arr| arr.sum > 0}
end

def aba_translate (str1)
    vowels = ["a","e","i","o","u"]
    str2 = ""
    str1.each_char.with_index do |c, i|
        if vowels.include?(c)
            str2 += c + "b" + c
        else 
            str2 += c
        end
    end
    return str2
end

def aba_array(arr1)
    arr1.map {|word| aba_translate(word)}
end
