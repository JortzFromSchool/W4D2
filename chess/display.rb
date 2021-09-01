require_relative "board.rb"
require_relative "cursor.rb"
require "colorize"

class Display

    def initialize(cursor_pos, board)
        @cursor_pos = cursor_pos
        @board = board
        @cursor = Cursor.new([0,0], board)
    end

    def render
        # iterate through every space in board
        @board.board.each do |row|
            row.each do |piece|
            #first check to see if pos is a cursor
                #change color to cursor color
                if piece.position == @cursor_pos
                    print piece.symbol.to_s.colorize(:blue) + " "
                elsif piece.color == "white"
                    print piece.symbol.to_s.colorize(:white) + " "
                elsif piece.color == "black"
                    print piece.symbol.to_s.colorize(:black) + " "
                else
                    print "_".colorize(:purple) + " "
                end
            # case statement for the symbol
            # depending on what symbol is, print the color that matches piece color
            #if null piece, print an underscore
            end
            print "\n"
        end
        return true
    end

    attr_reader :cursor_pos, :board
end