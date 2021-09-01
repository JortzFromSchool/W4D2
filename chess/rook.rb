require_relative "piece.rb"
require_relative "slidable.rb"

class Rook < Piece
    include Slidable

    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol
    end

    def move_dirs
        return [[0, 1], [0, -1], [1, 0], [-1, 0]]
    end

    attr_reader :symbol, :board
end