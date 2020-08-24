function binary_search(array, x, low, high)
    if high >= low
        mid = low + div(high - low, 2)
        # If found at mid, then return it
        if array[mid] == x
            return mid
        # Search the left half
        elseif array[mid] > x
            return binary_search(array, x, low, mid - 1)
        # Search the right half
        else
            return binary_search(array, x, mid + 1, high)
        end
    else
        return -1
    end
end

array = [3, 4, 5, 6, 7, 8, 9]
x = 5

result = binary_search(array, x, 1, length(array))

if result != -1
    print("Element is present at index ", result)
else
    print("Not found")
end