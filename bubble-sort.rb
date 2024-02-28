unsorted_array = [6, 2, 4, 9, 10, 4, 22, 12]
another_unsorted_array = [4,3,78,2,0,2]

def bubble_sort(array)
    is_sorted = false

    while !is_sorted do
        detect_sort = 0 # Variable to see how many non-swaps we've made

        # Loop through the array
        (0..array.length - 2).each { |i|
            # If the left element is greater than the right swap them
            if array[i] > array[i+1]
                temp_value = array[i]
                array[i] = array[i+1]
                array[i+1] = temp_value
            else
                # If we didn't make a swap increment detect_sort
                detect_sort += 1
                # If detect_sort is equal to the array.length the array is sorted
                if detect_sort + 1 == array.length
                    is_sorted = true
                end
            end
        }
    end

    return array
end

p bubble_sort(unsorted_array)
p bubble_sort(another_unsorted_array)