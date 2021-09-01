require_relative "piece.rb"
require_relative "stepable.rb"

class Knight < Piece
    include Stepable

    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol 
    end

    def move_dirs
        return [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]
    end

    attr_reader :symbol, :board
end