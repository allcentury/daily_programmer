puts gets.scan(/([^aeiou ]*)([aeiou]*)/).transpose.map(&:join)
