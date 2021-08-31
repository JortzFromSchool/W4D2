require_relative "board.rb"
require_relative "piece.rb"
require_relative "stepable.rb"

class King < Piece
    include Stepable

    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol
    end

    def move_dirs
        return [[0, 1],[0,-1],[1,0], [-1,0], [1,1], [1,-1], [-1, 1], [-1,-1]]
    end

    attr_reader :symbol, :board
end