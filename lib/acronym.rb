class Acronym
    def self.abbreviate(string)
        return string.scan(/\b\w/).join.upcase
    end
end