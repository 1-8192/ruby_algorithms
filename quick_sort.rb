def quick_sort(array, left, right)
    if left < right 
        index = partition(array, left, right)
        quick_sort(array, left, index-1)
        quick_sort(array, index + 1, right)
    end 

    array 
end 

def partition(array, left, right)
    pivot = array[right]
    pivot_index = left

    for i in left..right-1 do 
        if array[i] <= pivot
        temp_value = array[i]
        array[i] = array[pivot_index]
        array[pivot_index] = temp_value
        pivot_index += 1
        end
        i += 1
    end 

    temp_value = array[pivot_index]
    array[pivot_index] = pivot
    array[right] = temp_value

    return pivot_index
end

array = [4, 5, 1, 19, 3, 2, 2, 58, 7]
print quick_sort(array, 0, 8)

array = [3]
print quick_sort(array, 0, 0)