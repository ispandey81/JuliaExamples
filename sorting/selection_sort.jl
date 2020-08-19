# sample array
example_array = [200, 156, 40, 0 , 1, -76, 35]

# this is a mutating function (by convention we use ! at the end of mutating function's name)
function selectionSort!(array)
    size = length(array)
    for step in range(1, stop=size)
        min_idx = step
        for i in range(step + 1, stop=size)
            # select the minimum element in each loop
            if array[i] < array[min_idx]
                min_idx = i
            end
        end
        # put min at the correct position
        (array[step], array[min_idx]) = (array[min_idx], array[step])
    end
end


# calling the function
selectionSort!(example_array)
# printing the modified array
print(example_array)