require 'pry'
def merge_sort(m)
  return m if m.length <= 1
  middle = m.length / 2
  left = m[0,middle]
  right = m[middle..-1]
  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

def merge(left, right)
  binding.pry
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  binding.pry
  result + left + right
end

ary = [7,6,5,9,8,4]
p merge_sort(ary)
