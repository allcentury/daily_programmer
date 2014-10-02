require 'httparty'
require 'pry'
require 'json'
class Pbm

  def initialize
    @keys = Importer.get_bitmap
  end

  def convert(string)
    results = []
    string.each_char do |letter|
      results << [@keys[letter.upcase]]
    end
    to_file(results)
  end

  private 

  def to_file(array)
    array.each_with_index do |row|
      if row.is_a?(Array)
        to_file(row)
      else
        File.open("test.pbm", 'a+') do |file|
          if index == 5
            file << row + "\n"
          else
            file << row
          end
        end
      end
    end
  end
end

class Importer
  def self.get_bitmap
    resp = HTTParty.get("https://gist.githubusercontent.com/mikrostew/f4091d32f046febff54b/raw/7655fbd7b8b8323a56e67306b3413a665df5da38/font.json")
    JSON.parse(resp)
  end
end


