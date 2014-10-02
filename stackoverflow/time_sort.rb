require 'pry'
arr =   [
  { name: 01, start_date: '2014-04-24 22:03:00', start_location: 'A', end_date: '2014-04-24 22:10:00', end_location: 'B' },
  { name: 05, start_date: '2014-04-24 22:10:00', start_location: 'C', end_date: '2014-04-24 23:10:00', end_location: 'D' },
  { name: 01, start_date: '2014-04-24 17:10:00', start_location: 'X', end_date: '2014-04-24 20:10:00', end_location: 'B' },
  { name: 01, start_date: '2014-04-24 17:10:00', start_location: 'Z', end_date: '2014-04-24 20:10:00', end_location: 'B' },
  { name: 06, start_date: '2014-04-24 20:15:00', start_location: 'B', end_date: '2014-04-24 22:10:00', end_location: 'C' },
  { name: 03, start_date: '2014-04-24 23:15:00', start_location: 'D', end_date: '2014-04-24 00:10:00', end_location: 'E' }
]


arr.each do |a|
  binding.pry
end
