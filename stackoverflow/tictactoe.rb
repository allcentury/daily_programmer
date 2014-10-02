    class Board
      attr_reader :board
      def initialize
        @board = [
          ['-', '-', '-'],
          ['-', '-', '-'],
          ['-', '-', '-']
        ]
      end

      def printb
        @board.each do |row|
          print "|"
          row.each { |cell| print "#{cell}|" }
          puts "\n-------"
        end
      end

    end

    board = Board.new
    board.printb
