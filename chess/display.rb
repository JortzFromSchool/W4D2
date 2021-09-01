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
        @board.each do |row|
            #first check to see if pos is a cursor
                #change color to cursor color
            # case statement for the symbol
            # depending on what symbol is, print the color that matches piece color
            #if null piece, print an underscore
            print "\n"
        end
    end
end