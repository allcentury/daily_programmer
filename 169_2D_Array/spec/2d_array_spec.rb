require 'rspec'
require_relative '../lib/rotate'

describe Rotate do
  let(:array) {
    [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
  }
  it 'flips a 2d array 90 degrees' do
    expect(Rotate.new(array).ninety_degrees).to eq([
      [7,4,1],
      [8,5,2],
      [9,6,3]
    ])
  end

  it ' flips a bigger 2d array 90 degrees' do
    array = [
    ]
    string = "1 2 3 4 5 6 7 8 9 0
    0 9 8 7 6 5 4 3 2 1
    1 3 5 7 9 2 4 6 8 0
    0 8 6 4 2 9 7 5 3 1
    0 1 2 3 4 5 4 3 2 1
    9 8 7 6 5 6 7 8 9 0
    1 1 1 1 1 1 1 1 1 1
    2 2 2 2 2 2 2 2 2 2
    9 8 7 6 7 8 9 8 7 6
    0 0 0 0 0 0 0 0 0 0"
    string.each_line do |line|
      int_line = [line.lstrip.gsub(" ", ",").chomp]
      sub = int_line[0].split(",")
      sub.collect! { |i| i.to_i }
      array << sub 
    end
    result_array = [
      [0, 9, 2, 1, 9, 0, 0, 1, 0, 1],
      [0, 8, 2, 1, 8, 1, 8, 3, 9, 2],
      [0, 7, 2, 1, 7, 2, 6, 5, 8, 3],
      [0, 6, 2, 1, 6, 3, 4, 7, 7, 4],
      [0, 7, 2, 1, 5, 4, 2, 9, 6, 5],
      [0, 8, 2, 1, 6, 5, 9, 2, 5, 6],
      [0, 9, 2, 1, 7, 4, 7, 4, 4, 7],
      [0, 8, 2, 1, 8, 3, 5, 6, 3, 8],
      [0, 7, 2, 1, 9, 2, 3, 8, 2, 9],
      [0, 6, 2, 1, 0, 1, 1, 0, 1, 0]
    ]
    expect(Rotate.new(array).ninety_degrees).to eq(result_array)
  end

  it 'flips a small 2d array 180 degrees' do
    result_array = [
      [9,8,7],
      [6,5,4],
      [3,2,1]
    ]
    expect(Rotate.new(array).one_hundred_eighty_degrees).to eq(result_array)
  end
end
