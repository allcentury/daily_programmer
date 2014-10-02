def num_to_date(val)
  results = {}
  results[:month] = val.to_i
  remain = val % val.to_i
  days = remain * 30 #30 days in a month
  if days > 7
    results[:weeks] = days.to_i / 7
    rem = days % days.to_i
    rem < 0 ? results[:days] = 0 : results[:days] = rem.to_i
  else
    results[:weeks] = 0
    results[:days] = days
  end
  results
end

num = 12.4893617021277
puts num_to_date(num)
