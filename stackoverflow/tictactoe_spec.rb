  require 'rspec'
  require_relative 'tictactoe'

  describe Board do
    it 'has a 3 x 3 grid' do
      board = Board.new
      expect(board.board[0].size).to eq 3
      expect(board.board.size).to eq 3
    end
  end
