# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.
<<<<<<< HEAD
def peak_finder (arr)
    peaks = []

    arr.each_with_index do |ele, i|
        right = arr[i + 1]
        left = arr[i - 1]

        if i == 0 && ele > right
            peaks << ele
        elsif i == arr.length - 1 && ele > left
            peaks << ele
        elsif ele > left && ele > right
            peaks << ele
        end
    end
    
   return peaks
end
=======
>>>>>>> 37ef753f88918ce7fb0b2944c67e435d429ca519


p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
