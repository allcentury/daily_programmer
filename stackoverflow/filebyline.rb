content = []
require 'pry'
File.open('filebyline.txt', 'r').each_line do |line|
  content << line
end

results = []
x = 0
while x <= content.size-1
  if content[x].include?('xxx')
    results << content[x]
    j = 0
    keep_going = true
    while keep_going
      if results[j].include?(')')
        results.shift
        keep_going = false
      else
        results << content[x+j]
      end
      j += 1
    end
  end
  x += 1
end

def grab(arr)
  merge = arr.inject { |x, y| x << y }
  merge.gsub(/\s+/, "")[/\(.*?\)/].gsub(/[()]/, "")
end
final = grab(results)

binding.pry
