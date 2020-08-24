function linear_search(array, n, x)
    # Going through array sequentially
    for i in range(1, stop=n)
        if (array[i] == x)
            return i
        end
    end
    return -1
end

array = [2, 4, 0, 1, 9]
x = 9
n = length(array)
result = linear_search(array, n, x)
if (result == -1)
    print("Element not found")
else
    print("Element found at index: ", result)
end