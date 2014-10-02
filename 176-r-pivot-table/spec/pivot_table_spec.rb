require 'rspec'
require_relative '../lib/pivot_table'

describe PivotTable do
  it 'sums tower usage by day' do
    p = PivotTable.new
    p.sum("1009 Fri 98")
    p.sum("1009 Fri 100")
    expect(p.table_print).to eq("Tower #\tDay of Week\tUsage\n
                                 1009\tFri\t99") 
  end
end
