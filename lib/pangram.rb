class Pangram 
    def self.pangram?(string)
        return ('a'..'z').all? { |word| string.downcase.include? (word) }
    end
end