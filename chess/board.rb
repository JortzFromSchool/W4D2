require_relative "piece.rb"

class Board

    def initialize
        @board = Array.new(8) {Array.new(8)}
        #black rooks 
        @board[0][0] = Piece.new
        @board[0][7] = Piece.new
        #black knights
        @board[0][1] = Piece.new
        @board[0][6] = Piece.new
        #black bishops
        @board[0][2] = Piece.new
        @board[0][5] = Piece.new
        #queen
        @board[0][4] = Piece.new
        #king
        @board[0][3] = Piece.new
        i = 0
        until i == 8
            @board[1][i] = Piece.new
            i += 1
        end

        #white rooks 
        @board[7][0] = Piece.new
        @board[7][7] = Piece.new
        #white knights
        @board[7][1] = Piece.new
        @board[7][6] = Piece.new
        #white bishops
        @board[7][2] = Piece.new
        @board[7][5] = Piece.new
        #queen
        @board[7][4] = Piece.new
        #king
        @board[7][3] = Piece.new
        j = 0
        until j == 8
            @board[6][j] = Piece.new
            j += 1
        end
    end

end