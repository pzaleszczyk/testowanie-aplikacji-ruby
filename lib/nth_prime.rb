class Prime
    def self.is_prime?(n)
        return false if n <= 1
        Math.sqrt(n).to_i.downto(2).each {|i| return false if n % i == 0}
        return true
    end
    def self.nth(n)
        if n == 0 
            raise ArgumentError
        end

        i = 1
        counter = 0
        while true
            if is_prime?(i)
                counter += 1
                if counter == n
                    return i
                end
            end
            i += 1
        end
    end
end