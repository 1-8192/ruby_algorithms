#Given an index N find the value at that index in the fibonacci sequence # recursively at index N # fibonacci sequence = 1,1,2,3,5,8,13,21.. # indices = 1,2,3,4,5,6,7, 8 # example: 6, output 8

def fibonacci_finder(index)
    if index < 2
        index 
    else  
        fibonacci_finder(index - 1) + fibonacci_finder(index - 2)
    end
end 

print fibonacci_finder(7)