require_relative '../lib/../lib/acronym'

describe Acronym do
  describe "self.abbreviate" do
    it "Tests basic" do
      expect('PNG').to eq Acronym.abbreviate('Portable Network Graphics')
    end

    it "Tests lowercase words" do
      expect('ROR').to eq Acronym.abbreviate('Ruby on Rails')
    end

    it "Tests punctuation" do
      expect('FIFO').to eq Acronym.abbreviate('First In, First Out')
    end

    it "Tests all caps word" do
      expect('GIMP').to eq Acronym.abbreviate('GNU Image Manipulation Program')
    end

    it "Tests punctuation without whitespace" do
      expect('CMOS').to eq Acronym.abbreviate('Complementary metal-oxide semiconductor')
    end

    it "Tests very long abbreviation" do
      expect('ROTFLSHTMDCOALM').to eq Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')
    end

    it "Tests consecutive delimiters" do
      expect('SIMUFTA').to eq Acronym.abbreviate('Something - I made up from thin air')
    end
  end
end