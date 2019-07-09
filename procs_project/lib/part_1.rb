def my_map (arr, & prc)
    newArr = []
    arr.each { |ele| newArr << prc.call(ele)}
    return newArr
end

def my_select (arr, &prc)
    newArr = []
    arr.each {|ele| newArr << ele if prc.call(ele) == true}
    newArr
end

def my_count(arr, &prc)
    count = 0
    arr.each {|ele| count +=1 if prc.call(ele) == true}
    count
end

def my_any?(arr, &prc)
    arr.each {|ele| return true if prc.call(ele) == true}
    return false
end

def my_all?(arr, &prc)
    arr.each {|ele| return false if prc.call(ele) == false}
    return true
end

def my_none?(arr, &prc)
    arr.each {|ele| return false if prc.call(ele) == true}
    return true
end