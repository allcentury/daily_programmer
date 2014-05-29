class ArrayReverser
  def reverse(array)
    left_ptr = 0
    right_ptr = array.length - 1
    while left_ptr < right_ptr
      temp = array[left_ptr]
      array[left_ptr] = array[right_ptr]
      array[right_ptr] = temp

      left_ptr += 1
      right_ptr -= 1
    end
    array
  end
end
