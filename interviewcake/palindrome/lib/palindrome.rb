require 'pry'
class Word

  def self.is_palindrome?(string)
    perms = permutations(string)
    perms.each do |word|
      if word == word.reverse
        return true
      end
    end
    false
  end

  def self.permutations(string)
    string.each_char.to_a.permutation.map(&:join).uniq
  end

end
