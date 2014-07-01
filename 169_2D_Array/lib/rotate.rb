class Rotate

  def initialize(array)
    @current_array = array
    @side = @current_array.first.length
  end

  def ninety_degrees
    new_array = Array.new(@side) { Array.new(@side) }
    for x in 0..@current_array.length-1
      temp = 0
      y = @side-1
      while y >= 0
        new_array[x][y] = @current_array[temp][x]
        y -= 1
        temp += 1
      end
    end
    @current_array = new_array
  end

  def one_hundred_eighty_degrees
    2.times { self.ninety_degrees }
    @current_array
  end

  def two_hundred_seventy_degrees
    3.times { self.ninety_degrees }
    @current_array
  end
  
end
