class Board
  attr_reader :tiles
  def initialize(letters)
    @letter = letters
    @tiles = Hash.new { |cols, key| cols[key] = {} }
   each_position { |x, y| @tiles[x][y] = rows[y][x] } 
  end

  def each_position(&block)
    4.times do |y|
      4.times do |x|
        yield x, y
      end
    end
  end
end

class Boggle

end
