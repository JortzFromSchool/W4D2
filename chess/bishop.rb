require_relative "board.rb"
require_relative "piece.rb"

class Bishop < Piece
    include Slidable

    def initialize(position, color, symbol)
        super(position, color)
        @symbol = symbol
    end

    def move_dirs
        
    end
end