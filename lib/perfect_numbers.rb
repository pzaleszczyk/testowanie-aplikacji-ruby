class PerfectNumber 
    def self.classify(n)
        raise RuntimeError if n < 0
        sum = 0
        for i in 1..n/2 do 
            sum += i if n % i == 0 
        end
        if sum == n 
            return "perfect"
        elsif sum < n 
            return "deficient"
        else 
            return "abundant"
        end
    end
end