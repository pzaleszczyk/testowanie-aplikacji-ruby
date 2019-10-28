class Element 
    attr_reader :datum
    attr_accessor :next

    def initialize(n)
        @datum = n
    end
end

class SimpleLinkedList 
    def initialize(array = [])
        @list = []
        array.each { |value| push(Element.new(value)) }
    end

    def push(element)
        @list.unshift(element)
        return self
    end

    def pop 
        return @list.shift
    end

    def to_a 
        return @list.map(&:datum)
    end

    def reverse!
        @list.reverse!
        return self
    end
end