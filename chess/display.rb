require_relative "board.rb"
require_relative "cursor.rb"
require "colorize"

class Display

    def initialize(cursor_pos, board)
        @board = board
        @cursor = Cursor.new(cursor_pos, board)
        @cursor_pos = @cursor.cursor_pos
    end

    def render
        # iterate through every space in board
        @board.board.each_with_index do |row, i|
            row.each_with_index do |piece, j|
            #first check to see if pos is a cursor
                #change color to cursor color
                if [i, j] == @cursor_pos && @board[[i, j]].is_a?(NullPiece)
                    print "_".colorize(:blue) + " "
                elsif piece.position == @cursor_pos
                    print piece.symbol.to_s.colorize(:blue) + " "
                elsif piece.color == "white"
                    print piece.symbol.to_s.colorize(:white) + " "
                elsif piece.color == "black"
                    print piece.symbol.to_s.colorize(:black) + " "
                else
                    print "_".colorize(:red) + " "
                end
            # case statement for the symbol
            # depending on what symbol is, print the color that matches piece color
            #if null piece, print an underscore
            end
            print "\n"
        end
        return true
    end
    
    def run 
        while true
            self.render
            @cursor.get_input
        end
    end
    

    attr_reader :cursor_pos, :board, :cursor
end
b = Board.new
d = Display.new([0,0], b)

d.run