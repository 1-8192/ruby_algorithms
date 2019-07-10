# Algorithm practice selection sort. Divides items into already sorted and need to be sorted. Less efficient than insertion sort.
# Big O = О(n2) - quadratic algorithm
# Good for small arrays. Outperforms bubble and quicksort, but about even with insertionsort 

def selection_sort(array)
    for i in 0...array.length do
        min=i 
        for j in i+1...array.length
            if array[j]<array[min]
                temp=array[j]
                array[j]=array[min]
                array[min]=temp
            end
        end
    end
    return array
end 

#testing it out
array = [1,5,3,4,2,2,10,50,3002,2,7,4,9]
print selection_sort(array)