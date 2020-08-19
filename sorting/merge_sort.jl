# sample array
example_array = [200, 156, 40, 0 , 1, -76, 35]

# function for dividing and calling merge function
# this is a mutating function (by convention we use ! at the end of mutating function's name)
function mergesort!(arr)
    n = length(arr)
    if (n < 2)
        return
    end

    mid = div(n, 2)
    left = []
    right = []

    for i in range(1, stop=mid)
        number = arr[i]
        append!(left, number)
    end

    for i in range(mid + 1, stop=n)
        number = arr[i]
        append!(right, number)
    end

    mergesort!(left)
    mergesort!(right)

    merge!(left, right, arr)
end

# function for merging two sub-arrs
# this is a mutating function (by convention we use ! at the end of mutating function's name)
function merge!(left, right, arr)
    i = 1
    j = 1
    k = 1

    while (i <= length(left) && j <= length(right))
        if (left[i] < right[j])
            arr[k] = left[i]
            i = i + 1
        else
            arr[k] = right[j]
            j = j + 1
        end
        k = k + 1
    end

    while (i <= length(left))
        arr[k] = left[i]
        i = i + 1
        k = k + 1
    end

    while (j <= length(right))
        arr[k] = right[j]
        j = j + 1
        k = k + 1
    end
end

# calling the function
mergesort!(example_array)

# printing the modified array
print(example_array)