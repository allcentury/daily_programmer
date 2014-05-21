class Fallout
  def initialize
    @word_bank = [
      "SCORPION",
      "FLOGGING",
      "CROPPERS",
      "MIGRAINE",
      "FOOTNOTE",
      "REFINERY",
      "VAULTING",
      "VICARAGE",
      "PROTRACT",
      "DESCENTS"
    ]
  end

  def start
    puts "Please pick a difficulty rating(1-5)"
    rating = gets.chomp
    words_by_rating = weighted_bank(rating)
    puts "Words have been selected"
    words_by_rating.each {|word| puts "#{word}"}
    winning_word =  words_by_rating.sample
    guesses = 4
    while true || guesses != 0
      puts "Please enter your guess"
      guess = gets.chomp.downcase
      accuracy = search_string(guess, winning_word)
      if guess == winning_word.downcase
        puts "You are correct"
        break false
      elsif accuracy.is_a(Fixnum)
        puts "You correctly guessed #{accuracy} out of #{winning_word.length} correct"

        puts "You have #{guesses} remaining"
      else
        puts "#{accuracy}"
      end
      guesses -= 1
    end
  end

  def weighted_bank(rating)
    ratings_hash = {
      "1" => 5,
      "2" => 7,
      "3" => 8,
      "4" => 9,
      "5" => 10
    }
    if ratings_hash.has_key?(rating)
      @word_bank.sample(ratings_hash[rating])
    else
      return "Please enter a valid integer 1-5"
    end
  end

  def search_string(guess, winning_word)
    accuracy = 0
    ctr = 0
    if guess.nil? || guess.length != winning_word.length
      return "You must enter a string of valid(#{winning_word.length}) length"
    else
      while ctr < winning_word.length
        if guess[ctr].downcase == winning_word[ctr].downcase
          accuracy += 1
        end
        ctr += 1
      end
    end
    accuracy
  end

end

