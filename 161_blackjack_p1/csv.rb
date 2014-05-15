contacts = {}
ctr = 1
CSV.foreach('filename.csv') do |row|
  contacts["user#{ctr}"] = {
    first_name: row[0],
    last_name: row[1],
    email: row[2]
  }
  ctr += 1
end


contacts = []
CSV.foreach('filename.csv') do |row|
  contacts << row
end
