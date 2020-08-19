# sample array
example_array = [200, 156, 40, 0 , 1, -76, 35]

# this is a mutating function (by convention we use ! at the end of mutating function's name)
function insertionSort!(arr)
    for i in 1:length(arr)
        key = arr[i]
        j = i - 1
        while j >= 1 && key < arr[j] 
            arr[j + 1] = arr[j] 
            j -= 1
            arr[j + 1] = key
        end
    end
end

# calling the function
insertionSort!(example_array)
# printing the modified array
print(example_array)
