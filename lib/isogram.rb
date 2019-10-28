class Isogram
    def self.isogram?(string)
        string = string.downcase
        return ('a'..'z').all?{|letter| string.count(letter) < 2}
    end
end