require 'rspec'
require_relative '../lib/boggle'

describe Boggle do
  it 'creates a new 4 x 4 board' do
    dice = %w[E E C A
              A L E P
              H N B O
              Q T T Y
             ] 
    board = Board.new(dice)
    expect(board.tiles).to be_a(Hash)
    expect(board.tiles).to eq({0=>{0=>"E", 1=>"A", 2=>"H", 3=>"Q"},
                               1=>{0=>"E", 1=>"L", 2=>"N", 3=>"T"},
                               2=>{0=>"C", 1=>"E", 2=>"B", 3=>"T"},
                               3=>{0=>"A", 1=>"P", 2=>"O", 3=>"Y"}})
  end
end
