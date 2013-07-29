def merge_sort(array)

    #base case: 
    if array.size <= 1
        return array
    end

    #otherwise...

    #split the input into two arrays.
    # split(a)
    # get back something like:
    #  
    # => [[8, 7, 6, 2, 9], [4, 1, 10, 5, 3]]
    # save those two arrays as left and right halves
    # left = array_returned[0]
    # right = array_returned[1]
    left, right = split(array)

    #combine the returned value of merge_sort of the left array and the right array
    result = combine(merge_sort(left),merge_sort(right))
end

def split(array)
    # 1. find index of middle (rounding down)
    mid = array.size / 2

    # 2. turn the two halves of the array into a single array of two halves.
    [array.take(mid),array.drop(mid)]
end

def combine(array_a,array_b)
    # --- base case ----
    #1. check if either array is empty
    if array_a.empty? || array_b.empty?
        #2. check which of the two arrays is the empty one.
        if array_b.empty?
            #3a. return non-empty array_a.
            return array_a
        else
            #3b. return non-empty array_b
            return array_b
        end
    end

    #otherwise... (i.e. if neither is empty)
    #find the smaller of each array's first elements.
    #then return the smaller of the two array's first elements.
    #store it in the variable "smallest" and remove it from the array it came from.
    if array_a.first <= array_b.first
        smallest = array_a.shift
    else
        smallest = array_b.shift
    end

    #recursively call "combine" on the two arrays
    #then prepend the smallest element to the result of each recursive call.
    combine(array_a, array_b).unshift(smallest)

end

 
