# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
<<<<<<< HEAD
def compress_str(str)
    str1 = ''
    i = 0
    while i < str.length
        char = str [i]
        count = 0 
        while char == str[i]

            count += 1
            i += 1
        end
        if count == 1
            str1 += char 
        else
            str1 += count.to_s + char
        end
    end
    return str1
end
=======
>>>>>>> 37ef753f88918ce7fb0b2944c67e435d429ca519


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
