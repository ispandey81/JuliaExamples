# sample array
example_array = [200, 156, 40, 0 , 1, -76, 35]

# this is a mutating function (by convention we use ! at the end of mutating function's name)
function bubbleSort!(arr)
    n = length(arr) 
    # Loop through all array elements 
    for i in 1:n
        for j in 1:n - i  
            # Swap if the element found is greater 
            # than the next element 
            if arr[j] > arr[j + 1]
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
            end
        end
    end
end

# calling the function
bubbleSort!(example_array)
# printing the modified array
print(example_array)

    