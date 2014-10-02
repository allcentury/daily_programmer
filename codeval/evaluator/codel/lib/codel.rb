require 'pry'
class Codel
  def initialize(str)
    @str = str
    @mapping = Mapping.new.keys
  end

  def translate
    result = ""
    @str.each_char do |letter|
      if @mapping.has_key?(letter)
        result << @mapping[letter]
      else
        result << letter
      end
    end
    result
  end
end

class Mapping
  attr_reader :keys
  def initialize
    @keys = map
  end

  
  def map
    coded = ""
    mappings = ""
    results = {}
    File.open('codel.txt', 'r').each_line do |line|
      coded << line
    end
    File.open('keys.txt', 'r').each_line do |line|
      mappings << line
    end
    coded.each_char.with_index do |letter, index|
      results[letter] = mappings[index]
    end
    binding.pry
    results
  end
end
