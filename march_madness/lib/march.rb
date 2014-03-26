require 'pry'
def march_madness(string, final_string=[])
  opening_enclosure = ['[', '(', '{']
  closing_enclosures = {
    '(' =>')',
    '[' => ']',
    '{' => '}'
  }
  inner_most_opening = ''
  inner_most_closing = ''
  index = 0
  counter = 0
  max_index = 0
  if string.length == 0
    return final_string.join(' ')
  else
    string.each_char do |letter|
      if opening_enclosure.include?(letter)
        inner_most_opening = letter
        index = counter
      end
      if letter == closing_enclosures[inner_most_opening]
        max_index = counter
        break
      end
      counter += 1
    end
    final_string << string[index..max_index]
    string.gsub!(string[index..max_index], '')
    final_string[-1].gsub!(/[^\w\s]/, '')
    final_string << final_string.pop.split(' ')
    final_string.flatten!
    march_madness(string, final_string)
  end

end
