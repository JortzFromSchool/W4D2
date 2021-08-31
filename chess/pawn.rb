require_relative "board.rb"
require_relative "piece.rb"
class Pawn < Piece
    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol
    end

    def moves

        #if at_start_row? add (whatever is two spaces ahead) to moves
        if self.at_start_row?
            if self.color == "white"
                
            end
    end

    attr_reader :symbol, :board
end