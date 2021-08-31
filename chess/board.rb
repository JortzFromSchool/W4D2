require_relative "piece.rb"

class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        #black rooks 
        @board[0][0] = Piece.new([0,0], "black")
        @board[0][7] = Piece.new([0,7], "black")
        #black knights
        @board[0][1] = Piece.new([0,1], "black")
        @board[0][6] = Piece.new([0,6], "black")
        #black bishops
        @board[0][2] = Piece.new([0,2],"black")
        @board[0][5] = Piece.new([0,5],"black")
        #black queen
        @board[0][4] = Piece.new([0,4],"black")
        #black king
        @board[0][3] = Piece.new([0,3],"black")
        i = 0
        #black pawns
        until i == 8
            @board[1][i] = Piece.new([1,i],"black")
            i += 1
        end
        #null pieces
        k = 2
        until k == 6
            (0...8).each do |l|
                @board[k][l] = NullPiece.new
            end
            k += 1
        end

        #white rooks 
        @board[7][0] = Piece.new([7,0],"white")
        @board[7][7] = Piece.new([7,7],"white")
        #white knights
        @board[7][1] = Piece.new([7,1],"white")
        @board[7][6] = Piece.new([7,6],"white")
        #white bishops
        @board[7][2] = Piece.new([7,2],"white")
        @board[7][5] = Piece.new([7,5],"white")
        #queen
        @board[7][4] = Piece.new([7,4],"white")
        #king
        @board[7][3] = Piece.new([7,3],"white")
        j = 0
        until j == 8
            @board[6][j] = Piece.new([6,i],"white")
            j += 1
        end
    end

    def [](position)
        return @board[position[0]][position[1]]
    end

    def []=(position, value)
        @board[position[0]][position[1]] = value  
    end

    def move_piece(start_pos, end_pos)
        raise "invalid starting position" if self[start_pos].is_a?(NullPiece)
        raise "end position not within limits" unless (end_pos[0] >= 0 && end_pos[0] < 8 && end_pos[1] >= 0 && end_pos[1] < 8)
        raise "start position not within limits" unless (start_pos[0] >= 0 && start_pos[0] < 8 && start_pos[1] >= 0 && start_pos[1] < 8)
        
        self[end_pos] = self[start_pos]
        self[start_pos] = NullPiece.new
    end

    attr_reader :board
end