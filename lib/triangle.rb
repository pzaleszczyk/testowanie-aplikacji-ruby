class Triangle
    def initialize(sides)
        @sides = sides
    end
    def valid_sides?
        return (@sides[0] + @sides[1] > @sides[2]) && (@sides[0] + @sides[2] > @sides[1]) && (@sides[1] + @sides[2] > @sides[0])
    end
    def valid? 
        return @sides.all? { |side| side != 0 } && self.valid_sides?
    end
    def equilateral?
        return self.valid? && @sides.uniq.size <= 1
    end
    def isosceles?
        return self.valid? && @sides.uniq.size <= 2 
    end
    def scalene?
        return self.valid? && @sides.uniq.size == 3 
    end
end