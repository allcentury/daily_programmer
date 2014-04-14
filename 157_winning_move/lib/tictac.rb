require 'pry'

def winning_move(player, gameboard)
  final_move = []
  gameboard.each_with_index do |row, index|
    if row[0] == row[1] && row[0] == player
      final_move.push(index,2)
    elsif

    end

  end
  final_move
end
