# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def largest_prime_factor(num)
    largestFactor = 0
    (1..num).each do |factor|
        # debugger
        if num % factor == 0
            if is_prime(factor) && largestFactor < factor
                largestFactor = factor
            end
        end
    end
    return largestFactor
end

def is_prime(num)
    return false if num < 2 
    (2...num).none? {|factor| num % factor == 0}
end

def unique_chars? (string1)
    allChars = Hash.new(0)
    string1.each_char do |char|
        # debugger
        allChars[char] += 1
        if allChars[char] > 1
            return false
        end
    end
    return true 
end

def dupe_indices (arr)
    dupes = Hash.new { |h,k| h[k] = []}
    arr.each_with_index do |char, idx|
        # debugger
        if arr.count(char)>1
            dupes[char] = dupes[char].push(idx)
        end
    end
    return dupes
end

def ana_array (arr1, arr2)
    arr1.each do |ele|
        if !arr2.include?(ele)
            return false
        end
    end
    arr2.each do |ele|
        if !arr1.include?(ele)
            return false
        end
    end
    return true
end