require 'pry'
class Finder
  def duplicates(array)
    # this is O(n)
    uniques = []
    dups = []
    array.each do |val|
      if uniques.include?(val)
        dups << val
      else
        uniques << val
      end
    end
    dups
  end

  def faster_dups_search(array)
    #this is O(1)
    array.inject(:+) - ((1..array.length-1).reduce(:+))
  end
end
