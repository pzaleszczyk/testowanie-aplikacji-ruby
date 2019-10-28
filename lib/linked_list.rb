class Node
    attr_accessor :data
    attr_accessor :prev
    attr_accessor :next

    def initialize(data)
        @data = data
        @prev = nil 
        @next = nil
    end
end

class Deque
    def initialize
        @head = nil 
        @tail = nil
    end

    def push(data)
        node = Node.new(data) 
        if @head.nil? && @tail.nil? 
            @head = node 
            @tail = node 
        else 
            @tail.next = node 
            node.prev = @tail 
            @tail = node 
        end
        return node
    end

    def pop 
        result = @tail.data 
        if !@tail.prev.nil? 
            @tail = @tail.prev
            @tail.next = nil 
        else  
            @head = nil
            @tail = nil 
        end
        return result
    end

    def shift 
        result = @head.data 
        if !@head.next.nil? 
            @head = @head.next 
            @head.prev = nil 
        else 
            @head = nil 
            @tail = nil 
        end
        return result 
    end

    def unshift(data) 
        node = Node.new(data)
        if @head.nil? && @tail.nil? 
            @head = node 
            @tail = node 
        else 
            @head.prev = node 
            node.next = @head 
            @head = node 
        end 
        return node 
    end
end