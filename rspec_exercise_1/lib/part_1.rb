def average (num1, num2)
    return (num1 + num2)/2.0
end

def average_array (array1)
    return array1.sum()/array1.count().to_f()
end

def repeat (string1, num1)
    newString =""
    num1.times{newString += string1}
    return newString
end

def yell (string1)
    return string1.upcase()+ '!'
end

def alternating_case(string1)
    words = string1.split(" ")
    sentence = words.map.with_index do |word, idx|
        if idx % 2 == 0
            word.upcase() 
        else 
            word.downcase()
        end
    end
    return sentence.join(" ")
end
