class CamelCaser
  def initialize(text)
   @text = text 
  end

  def convert
    result = ""
    counter = 0
    @text.each_char do  |letter|
      if /\w/.match(letter)
        result << (counter % 2 == 0 ? letter.upcase : letter.downcase)
        counter += 1
      else
        result << letter
      end
    end
    result
  end
end
