function palindrome!(x)
    # tries to convert a number data type to a string
    original_string = string(x)
    # read the string from last character to first character
    # can also be written as x[end:-1:1] as julia indexing is 1 based
    reversed_string = original_string[end:-1:begin]
    return reversed_string == original_string   
end

print(palindrome!("tenet"))