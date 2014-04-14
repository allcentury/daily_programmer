require_relative '../lib/tictac'

describe 'TicTac Toe Winner' do
  it 'finds the winning move for X' do
    player = 'X'
    gameboard = [
                ['X', 'X', '-'],
                ['-', 'X', 'O'],
                ['O', 'O', '-']
                ]
    expect(winning_move(player, gameboard)).to eq([0, 2])
  end
  it 'finds the winning move for O' do
    player = 'O'
    gameboard = [
                ['O', '-', 'X'],
                ['-', 'O', 'X'],
                ['-', '-', '-']
                ]
    expect(winning_move(player, gameboard)).to eq([2, 2])
  end
end
