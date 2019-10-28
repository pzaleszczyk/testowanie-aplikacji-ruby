class BinarySearch
    attr_reader :list

    def initialize(list)
        if list != list.sort
            raise ArgumentError
        end
        @list = list
    end 

    def search_for(n)
        if !list.include? n 
            raise RuntimeError
        end
        start_index = 0
        end_index = list.length - 1
        middle_index = self.middle

        while start_index <= end_index
            if list[middle_index] > n
                end_index = middle_index - 1
            elsif list[middle_index] < n
                start_index = middle_index + 1
            else  
                return middle_index
            end
            middle_index = (start_index + end_index) / 2
        end
    end

    def middle
        return list.length / 2
    end
end