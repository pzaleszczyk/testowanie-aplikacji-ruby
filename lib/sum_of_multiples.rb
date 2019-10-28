class SumOfMultiples
    def initialize(*args)
      @args = args
    end
  
    def to(number)
      if @args.empty? || @args == [0] 
        return 0
      end

      multiples = []
      @args.each do |arg|
        (0...number).to_a.select do |a|
            if a % arg == 0
                multiples.push(a)
            end
        end
      end
      return multiples.uniq.inject(:+)
    end
end