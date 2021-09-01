require_relative "required_pieces.rb"

class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        #black rooks 
        @board[0][0] = Rook.new([0,0], "black", self, :R)
        @board[0][7] = Rook.new([0,7], "black", self, :R)
        #black knights
        @board[0][1] = Knight.new([0,1], "black", self, :N)
        @board[0][6] = Knight.new([0,6], "black", self, :N)
        #black bishops
        @board[0][2] = Bishop.new([0,2],"black", self, :B)
        @board[0][5] = Bishop.new([0,5],"black", self, :B)
        #black queen
        @board[0][3] = Queen.new([0,3],"black", self, :Q)
        #black king
        @board[0][4] = King.new([0,4],"black", self, :K)
        i = 0
        #black pawns
        until i == 8
            @board[1][i] = Pawn.new([1,i],"black", self, :P)
            i += 1
        end
        #null pieces
        k = 2
        until k == 6
            (0...8).each do |l|
                @board[k][l] = NullPiece.instance
            end
            k += 1
        end

        #white rooks 
        @board[7][0] = Rook.new([7,0],"white", self, :R)
        @board[7][7] = Rook.new([7,7],"white", self, :R)
        #white knights
        @board[7][1] = Knight.new([7,1],"white", self, :N)
        @board[7][6] = Knight.new([7,6],"white", self, :N)
        #white bishops
        @board[7][2] = Bishop.new([7,2],"white", self, :B)
        @board[7][5] = Bishop.new([7,5],"white", self, :B)
        #queen
        @board[7][3] = Queen.new([7,3],"white", self, :Q)
        #king
        @board[7][4] = King.new([7,4],"white", self, :K)
        j = 0
        until j == 8
            @board[6][j] = Pawn.new([6,j],"white", self, :P)
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

        possible_moves = self[start_pos].moves
        raise "end position invalid" unless possible_moves.include?(end_pos)

        self[end_pos] = self[start_pos]
        self[end_pos].position = end_pos
        self[start_pos] = NullPiece.instance
    end

    attr_reader :board
end