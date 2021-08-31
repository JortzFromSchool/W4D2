class Piece
    def initialize(position, color)
        @position = position
        @color = color
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