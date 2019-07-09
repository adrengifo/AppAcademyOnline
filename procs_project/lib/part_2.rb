def reverser (str, &prc)
    prc.call(str.reverse!)
end

def word_changer (str, &prc)
    oldSentence = str.split(" ")
    newSentence = []
    oldSentence.each {|word| newSentence << prc.call(word)}
    return newSentence.join(" ")
end

def greater_proc_value (num, prc1, prc2)
    results = []
    results << prc1.call(num)
    results << prc2.call(num)
    results.max
end

def and_selector (arr, prc, prc2)
    newArray = []
    arr.each {|ele| newArray << ele if prc.call(ele) == true && prc2.call(ele) == true}
    newArray
end

def alternating_mapper (arr, prc1, prc2)
    newArr = []
    arr.each_with_index do |ele, i|
        if i.even?
            newArr << prc1.call(ele)
        else 
            newArr << prc2.call(ele)
        end
    end
    return newArr
end