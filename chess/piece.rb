class Piece
    def initialize(position, color, board)
        @position = position
        @color = color
        @board = board
    end

    def valid_moves
        # return in_check?
        
    end

    def move_into_check?(end_pos)
        new_board = self.duplicate
        new_board.move_piece(@position, end_pos)
        new_board.in_check?(@color)
    end
    # def moves()
    #     return nil
    # end
    attr_reader :color
    attr_accessor :position, :board
end
