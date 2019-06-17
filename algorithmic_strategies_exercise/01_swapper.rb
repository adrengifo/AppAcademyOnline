# Write a method, swapper(arr, idx_1, idx_2), that accepts an array and two indices as args.
# The method should swap the elements at the given indices and return the array.
# The method should modify the existing array and not create a new array.
<<<<<<< HEAD
def swapper (arr, ind1, ind2)
    arr[ind1], arr[ind2] = arr[ind2], arr[ind1]
    return arr

end
=======
>>>>>>> 37ef753f88918ce7fb0b2944c67e435d429ca519


p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d"], 3, 1)               # => ["a", "d", "c", "b"]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]
