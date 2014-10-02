require 'csv'
require 'pry'
names = {
  first: 'anthony',
  middle: 'samuel',
  last: 'ross'
}

columns = names.keys.to_a
CSV.open('test.csv', 'w',
         write_headers: true,
         headers: columns) do |csv|
           csv << names.values
         end
