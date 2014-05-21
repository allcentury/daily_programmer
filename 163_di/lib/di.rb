require 'pry'
class Di
  attr_reader :results

  def initialize
    @results = []
  end

  def roll(amount)
    (0..amount-1).each do
      @results << rand(1..6)
    end
  end

  def results_table
    results_hash = get_count
    puts "The following occured over #{@results.count} rolls"
    results_hash.each do |k, v|
      print "#{k}'s happened \t #{v} times \t #{(v.to_f / @results.count).round(2) * 100}%\n"
    end
  end

  def get_count
    results_hash = {
      "1" => 0,
      "2" => 0,
      "3" => 0,
      "4" => 0,
      "5" => 0,
      "6" => 0
    }
    @results.each do |result|
      results_hash[result.to_s] += 1
    end
    results_hash
  end

end

