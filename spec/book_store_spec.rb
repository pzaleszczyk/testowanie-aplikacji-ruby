require_relative '../lib/book_store'

describe BookStore do
  describe ".self.calculate_price" do
    it "Tests only a single book" do
      basket = [1]
      expect(BookStore.calculate_price(basket)).to eq 8.0
    end

    it "Tests two of the same book" do
      basket = [2, 2]
      expect(BookStore.calculate_price(basket)).to eq 16.00
    end

    it "Tests empty basket" do
      basket = []
      expect(BookStore.calculate_price(basket)).to eq 0.00
    end

    it "Tests two different books" do
      basket = [1, 2]
      expect(BookStore.calculate_price(basket)).to eq 15.20
    end

    it "Tests three different books" do
      basket = [1, 2, 3]
      expect(BookStore.calculate_price(basket)).to eq 21.60
    end

    it "Tests four different books" do
      basket = [1, 2, 3, 4]
      expect(BookStore.calculate_price(basket)).to eq 25.60
    end

    it "Tests five different books" do
      basket = [1, 2, 3, 4, 5]
      expect(BookStore.calculate_price(basket)).to eq 30.00
    end

    it "Tests two groups of four is cheaper than group of five plus group of three" do
      basket = [1, 1, 2, 2, 3, 3, 4, 5]
      expect(BookStore.calculate_price(basket)).to eq 51.20
    end

    it "Tests two groups of four is cheaper than group of five plus group of three" do
      basket = [1, 1, 2, 3, 4, 4, 5, 5]
      expect(BookStore.calculate_price(basket)).to eq 51.20
    end

    it "Tests two groups of four plus group of two is cheaper than two groups of three" do
      basket = [1, 1, 2, 2, 3, 4]
      expect(BookStore.calculate_price(basket)).to eq 40.80
    end

    it "Tests two each of first 4 books and 1 copy each of rest" do
      basket = [1, 1, 2, 2, 3, 3, 4, 4, 5]
      expect(BookStore.calculate_price(basket)).to eq 55.60
    end

    it "Tests two copies of each book" do
      basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5]
      expect(BookStore.calculate_price(basket)).to eq 60.00
    end

    it "Tests three copies of first book and 2 each of remaining" do
      basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1]
      expect(BookStore.calculate_price(basket)).to eq 68.00
    end

    it "Tests three each of first 2 books and 2 each of remaining books" do
      basket = [1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 1, 2]
      expect(BookStore.calculate_price(basket)).to eq 75.20
    end

    it "Tests four groups of four are cheaper than two groups each of five and three" do
      basket = [1, 1, 2, 2, 3, 3, 4, 5, 1, 1, 2, 2, 3, 3, 4, 5]
      expect(BookStore.calculate_price(basket)).to eq 102.40
    end
  end
end
