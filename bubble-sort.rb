def bubble_sort(array)
    swapping = true
    while swapping
        swapping = false
        0.upto(array.length() - 2) do |index|
            if array[index] > array[index + 1]
                array[index], array[index + 1] = array[index + 1], array[index]
                swapping = true
            end
        end
    end
    array
end

def bubble_sort_by(array)
    swapping = true
    while swapping
        swapping = false
        0.upto(array.length() - 2) do |index|
            if (yield(array[index],array[index + 1]) > 0)
                array[index], array[index + 1] = array[index + 1], array[index]
                swapping = true
            end
        end
    end
    array
end