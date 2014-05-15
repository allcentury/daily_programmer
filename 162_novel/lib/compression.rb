class Import
  def self.text_data
    results = []
    File.open('dictionary.txt') do |file|
      file.each_line do |line|
        results << line.chomp
      end
    end
    results
  end
end

class Compression

  def initialize(dictionary)
    @dictionary = dictionary
  end

  def decompress(string)
    final = []
    key_array = string.split(" ")
    key_array.each do |key|
      if !(key =~ /\W/).nil?
        if key.length <= 1
          final[-1] = final.last + key
        else
          final << string_fix(key)
        end
      elsif key =~ /(R|E)/
        #not testing for new line
      else
        if !(final.last =~ /\-/).nil?
          last = final.pop
          final[-1] = final[-1] + last + @dictionary[key.to_i + 1]
        else
          final << @dictionary[key.to_i + 1]
        end
      end
    end
    final.join(" ").chomp
  end

  def string_fix(string)
    keys = {
      "^" => "first_letter_upcase"
    }
    val = @dictionary[string[0..-2].to_i + 1]
    key = string[-1]
    result = keys[key]
    if result == 'first_letter_upcase'
      val = val[0].upcase + val[1..-1]
    end
    val
  end

end



