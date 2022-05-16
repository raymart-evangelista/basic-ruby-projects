def bubble_sort(array)
  p "old array: #{array}"
  array.each_with_index do |curr_num, curr_index|

    # p "outer: #{curr_num}, #{curr_index}"

    array.each_with_index do |inner_num, inner_index|

      # inner for loop should bubble up largest number to end of array
      if array[inner_index+1] != nil
        if array[inner_index] > array[inner_index+1]
          # swap positions
          temp = array[inner_index+1]
          array[inner_index+1] = array[inner_index]
          array[inner_index] = temp
          # p "swapped"
          p "new array: #{array}"
        end
      end
    end
  end
  return array
end

unsorted_array1 = [5,4,3,2,1]
p bubble_sort(unsorted_array1)

unsorted_array2 = [4,3,78,2,0,2]
p bubble_sort(unsorted_array2)