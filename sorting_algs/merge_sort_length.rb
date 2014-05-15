pets = ["dog", "cat", "donkey", "monkey", "horse"]
pets_hash = {}
pets.each do |pet|
  pets_hash[pet] = pet.length
end

puts pets_hash.sort_by { |k,v| v }
