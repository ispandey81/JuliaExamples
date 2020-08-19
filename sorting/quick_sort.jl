# sample array
example_array = [200, 156, 40, 0 , 1, -76, 35]

# this is a mutating function (by convention we use ! at the end of mutating function's name)
# Function to partition the array on the basis of pivot element
function partition!(array, low, high)
    # Select the pivot element
    pivot = array[high]
    i = low - 1
    # Put the elements smaller than pivot on the left and greater 
    # than pivot on the right of pivot
    for j in range(low, stop=high)
        if array[j] < pivot
            i = i + 1
            (array[i], array[j]) = (array[j], array[i])
        end
    end
    (array[i + 1], array[high]) = (array[high], array[i + 1])
    return i + 1
end

function quickSort!(array, low, high)
    if low < high
        # Select pivot position and put all the elements smaller 
        # than pivot on left and greater than pivot on right
        pi = partition!(array, low, high)

        # Sort the elements on the left of pivot
        quickSort!(array, low, pi - 1)

        # Sort the elements on the right of pivot
        quickSort!(array, pi + 1, high)
    end
end

low = 1
high = length(example_array)
# calling the function
quickSort!(example_array, low, high)
# printing the modified array
print(example_array)