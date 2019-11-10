require_relative '../lib/binary_search'

describe BinarySearch do
  describe ".list" do
    it "Tests it has list data" do
      binary = BinarySearch.new([1, 3, 4, 6, 8, 9, 11])
      expect([1, 3, 4, 6, 8, 9, 11]).to eq binary.list
    end
  end

  describe ".middle" do
    it "Finds position of middle item" do
      binary = BinarySearch.new([1, 3, 4, 6, 8, 9, 11])
      expect(3).to eq binary.middle
    end
  end

  describe ".search_for" do
    it "Finds position of search data" do
      binary = BinarySearch.new([1, 3, 4, 6, 8, 9, 11])
      expect(5).to eq binary.search_for(9)
    end

    it "Finds position in larger list" do
      binary = BinarySearch.new([1, 3, 5, 8, 13, 21, 34, 55, 89, 144])
      expect(1).to eq binary.search_for(3)
      expect(7).to eq binary.search_for(55)
    end

    it "Finds correct position in a list with an even number of elements" do
      binary = BinarySearch.new([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377])
      expect(5).to eq binary.search_for(21)
      expect(6).to eq binary.search_for(34)
    end
  end

  context "an exception is raised" do
    it "On unsorted list" do
      expect { BinarySearch.new([2, 1, 4, 3, 6]) }.to raise_error(ArgumentError)
    end

    it "When data not in list" do
      expect { BinarySearch.new([1, 3, 6]).search_for(2) }.to raise_error(RuntimeError)
    end
  end

end