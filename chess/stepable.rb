module Stepable
    def moves
        results = []

        directions = self.move_dirs
        #puts "directions = " + directions.to_s

        directions.each do |direction|
            x , y = @position[0], @position[1]
            x += direction[0]
            y += direction[1]
            #puts "x = " + x.to_s
            #puts "y = " + y.to_s

            unless (x < 0 || x > 7 || y < 0 || y > 7)
                if self.board[[x,y]].is_a?(NullPiece)
                    results << [x,y]
                elsif self.color != self.board[[x,y]].color
                    results << [x,y]
                end
            end
        end

        results
    end
end