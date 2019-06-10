# Algorithm practice insertion sort. Builds array one item at a time like someone would sort a bridge hand.
# Big O = О(n2) 
# Good for smaller arrays and more optimal than selection and bubble sort.


def insertion_sort(array)
    i=0
    while i < array.length-1
        j=i
        while j >= 0 
            if array[j] > array[j+1]
            temp = array[j]
            array[j]=array[j+1]
            array[j+1]=temp 
            end 
            j-=1
        end 
        i+=1
    end 
    return array
end

# Testing it out
array = [3,5,1,7,4,2,8,2,19,3005,4,3,2]
print insertion_sort(array)
