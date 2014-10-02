require 'pp'
require 'pry'
require 'csv'

class Importer
  def self.get(filename)
    violations = []
    CSV.foreach(filename,  headers: true) do |csv|
      violations << Violation.new(
        csv[0],
        csv[1],
        csv[2],
        csv[3],
        csv[4],
        csv[5]
      )
    end
    violations
  end
end

class Violation
  attr_reader :id, :inspection_id, :category, :date_open
  attr_reader :date_closed, :type
  def initialize(id, inspection_id, category, date_open, date_closed, type)
    @id = id
    @inspection_id = id
    @category = category
    @date_open = date_open
    @date_closed = date_closed
    @type = type
  end

end

class Analysis
  def initialize(violations)
    @violations = violations 
  end

  def violations_by_category
    results = @violations.inject({}) do |sum, v|
      sum[v.category] = sum[v.category].to_i + 1; sum
    end
    results
  end

  def earliest_by_category
    sorted = @violations.sort_by { |a| a.date_open }
    results = first_instance_by_cat(sorted)
  end

  def latest_by_category
    sorted = @violations.sort_by { |a| a.date_open }.reverse
    results = first_instance_by_cat(sorted)
  end

  private

  def first_instance_by_cat(violations)
    results = {}
    violations.each do |violation|
      if !results.has_key?(violation.category)
        results[violation.category] = violation
      end
    end
    results
  end

end


violations = Importer.get('Violations-2012.csv')
analysis = Analysis.new(violations)

puts "The number of violations per category are"
PP.pp(analysis.violations_by_category)
puts "--------------------------------"
puts "The earliest violations by category are"
PP.pp(analysis.earliest_by_category)
puts "--------------------------------"
puts "The latest violations by category are"
PP.pp(analysis.latest_by_category)

header = ["violation_id","inspection_id","violation_category","violation_date",
          "violation_date_closed","violation_type"]

CSV.open('results.csv', 'wb') do |csv|
  csv << ["The number of violations per category are"]
  csv << ["category", "amount"]
  analysis.violations_by_category.each do |cat, val|
    csv << [cat, val]
  end
  csv << ["The earliest violations by category are"]
  csv << header
  analysis.earliest_by_category.each do |cat, violation|
    csv << [
      violation.id, 
      violation.inspection_id,
      violation.category,
      violation.date_open,
      violation.date_closed,
      violation.type
    ]
  end
  csv << ["The latest violations by category are"]
  csv << header
  analysis.latest_by_category.each do |cat, violation|
    csv << [
      violation.id, 
      violation.inspection_id,
      violation.category,
      violation.date_open,
      violation.date_closed,
      violation.type
    ]
  end
end
