require_relative "piece.rb"
require_relative "slidable.rb"

class Bishop < Piece
    include Slidable

    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol
    end

    def move_dirs
        return [[1, 1], [1, -1], [-1, -1], [-1, 1]]
    end

    attr_reader :symbol, :board
end