class Anagram 
    def initialize(word)
        @word = word.downcase
    end
    def match(array)
        sorted_word = @word.chars.sort
        return array.select { |candidate| candidate.downcase.chars.sort == sorted_word && candidate.downcase != @word} 
    end
end