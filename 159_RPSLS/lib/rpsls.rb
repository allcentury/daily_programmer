wins = {
  rock: {
    scissors: "smash smash",
    lizard: "crush crush",
  },
  paper: {
    rock: "covered",
    spock: "he can't see"
  },
  scissors: {
    paper: "snip snip",
    lizard: "ouch he lost his tail"
  },
  lizard: {
    paper: "he just ate your paper...",
    spock: "poisoned the great one!"
  },
  spock: {
    rock: "well ya, it rhymes...",
    scissors: "can the great one actually be cut?  no."
  }
}

while true
  puts "\n\nPlease enter your move[rock, paper, scissors, lizard, spock] or nothing to quit"
  input = gets.chomp
  input == "" ? break : input = input.downcase.to_sym
  rand_comp = wins.keys.sample(1).first
  puts "\n The computer picked #{rand_comp.to_s}"
  if wins[input]
    if wins[input][rand_comp]
      puts "User wins: Well #{input} beat #{rand_comp} and you know what they say.. #{wins[input][rand_comp]} "
    elsif wins[rand_comp][input]
      puts "Computer wins: Well #{rand_comp} beat #{input} and you know what they say.. #{wins[rand_comp][input]} "
    else
      puts "it's a tie!"
    end
  else
    puts 'please enter a valid hand [rock, paper, scissors, lizard, spock]'
  end
end
