module Slidable
    def moves
        #initialize a return array
        results = []

        #call a method that returns an array of directions
        directions = self.move_dirs

        #for each of those directions, add the direction coordinates to our starting position
        #repeatedly until before we hit a like-colored piece, until we hit an opponent piece,
        # or until we're off the board and add all those moves to our return array
        directions.each do |direction|
            x , y = @position[0], @position[1]
            until (x < 0 || x > 7 || y < 0 || y > 7)
                x += direction[0]
                y += direction[1]
                if self.board[[x, y]].is_a?(NullPiece)
                    #space is empty
                    results << [x,y]
                elsif self.color == self.board[[x, y]].color
                    #space is blocked
                    break
                else
                    #space is capturable
                    results << [x,y]
                    break
                end
            end
        end
        #return our array
        results
        
    end
end