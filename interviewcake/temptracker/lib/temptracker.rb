class TempTracker
  attr_reader :temps

  def initialize
    @temps = []
  end

  def insert(temp)
    @temps << temp
    "Temperature Inserted"
  end

  def max
    @temps.max
  end

  def min
    @temps.min
  end

  def mean
    (@temps.inject(:+) / @temps.length).to_f.round(2)
  end

  def median
    sort = @temps.sort
    sort[sort.length/2]
  end

end
