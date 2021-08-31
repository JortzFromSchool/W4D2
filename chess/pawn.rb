require_relative "board.rb"
require_relative "piece.rb"

class Pawn < Piece
    def initialize(position, color, board, symbol)
        super(position, color, board)
        @symbol = symbol
    end

    def moves
        result = []
        x = self.position[0]
        y = self.position[1]
        #if at_start_row? add (whatever is two spaces ahead) to moves
        if self.at_start_row?
            if self.color == "white"
                result << [x-2, y] if self.board[[x-2, y]].is_a?(NullPiece)
            else
                result << [x+2, y] if self.board[[x-2, y]].is_a?(NullPiece)
            end
        end

        
        result << [x+self.forward_dir, y] if self.board[[x+self.forward_dir, y]].is_a?(NullPiece) && x + self.forward_dir < 8 && x + self.forward_dir >= 0

        diag1 = [x+self.forward_dir, y+1]
        diag2 = [x+self.forward_dir, y-1]

        if x + self.forward_dir < 8 && x + self.forward_dir >= 0 && y + 1 < 8 && y + 1 >= 0
            result << diag1 if self.board[diag1].color != self.color && self.board[diag1].color != nil
        end

        if x + self.forward_dir < 8 && x + self.forward_dir >= 0 && y - 1 < 8 && y - 1 >= 0
            result << diag2 if self.board[diag2].color != self.color && self.board[diag2].color != nil
        end
        result
    end

    def at_start_row?
        if self.color == "black"
            return self.position[0] == 1
        else
            return self.position[0] == 6
        end
    end

    def forward_dir
        if self.color == "black"
            return 1
        else
            return -1
        end
    end

    attr_reader :symbol, :board
end