def multiplication_table(size)
  ctr = 1
  while ctr <= size
    print "#{ctr}\t"
    j = 2
    while j <= size
      print "#{ctr * j}\t"
      j += 1
    end
    ctr += 1
  end
end

multiplication_table(12)
