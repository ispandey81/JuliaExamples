function print_fibonacci(n)
    if n <= 1
        return n
    else
        return(print_fibonacci(n - 1) + print_fibonacci(n - 2))
    end
end

nterms = 9

if nterms <= 0
    print("Plese enter a positive integer")
else
    println("Fibonacci sequence:")
    # this will print 10 numbers in the sequence as nterms = 9
    for i in range(0, stop=nterms)
        println(print_fibonacci(i))
    end
end
