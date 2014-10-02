require 'pry'
def shuffling(arr = [])
  length = arr.length
  arr.each_with_index do |element, index|
    i = rand(length)
    binding.pry
    arr[index], arr[i] = arr[i], arr[index]
  end
  arr
end


puts shuffling([2,4,5])
