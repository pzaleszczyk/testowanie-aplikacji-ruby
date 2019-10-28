class CustomSet 
    attr_reader :elements

    def initialize(elements)
        @elements = elements.uniq
    end

    def add(item) 
        elements.push(item) unless member?(item)
        return self
    end

    def intersection(other) 
        return self.class.new(elements & other.elements)
    end

    def difference(other) 
        return self.class.new(elements - other.elements)
    end

    def union(other) 
        return self.class.new(elements + other.elements)
    end

    def subset?(set) 
        return elements.all? { |item| set.member?(item) }
    end

    def disjoint?(set) 
        return elements.none? { |item| set.member?(item) }
    end

    def empty? 
        return elements.empty?
    end

    def member?(item)
        return elements.include?(item)
    end

    def ==(other)
        return elements.sort == other.elements.sort
    end
end