class ParenFinder
  def initialize(string, paren_index)
    @string = string
    @paren_index = paren_index
  end

  def find_closing
    inner_count = 0
    0.upto(@paren_index) do |ctr|
      inner_count += 1 if @string[ctr] == "("
    end
    closing = []
    index = 0
    @string.each_char do |letter|
      if letter == ")"
        closing << index
      end
      index += 1
    end
    closing[(inner_count*-1)]
  end
end
