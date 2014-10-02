require 'pry'
class PivotTable
  def initialize
    @records = {} 
  end

  def sum(record)
    recs = record.split
    if @records.has_key?(recs[0])
      @records[recs[0]] << [recs[1], recs[2]]
    else
      @records[recs[0]] = [[recs[1], recs[2]]]
    end
  end

  def table_print
    puts "Tower #\tDay of the Week\tUsage"
    aggs = self.agg
    @records.each do |record|
      puts record
    end
  end

  def agg
    results = {}
    @records.each do |k, v|
      v.each do |rec|
        if results[k].has_key?(rec[0])
          results[k][rec[0]] << rec[1]
        end
        end
      end
    end
  end
