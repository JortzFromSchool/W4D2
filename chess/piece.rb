class Piece
    def initialize(position, color, board)
        @position = position
        @color = color
        @board = board
    end

    # def moves()
    #     return nil
    # end
    attr_reader :position, :color
end

class NullPiece < Piece
    def initialize
    end
end