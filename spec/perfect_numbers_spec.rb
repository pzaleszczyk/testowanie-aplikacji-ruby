require_relative '../lib/perfect_numbers'

describe PerfectNumber do
  describe ".self.classify" do
    it "Tests initialize perfect number" do
      expect { PerfectNumber.classify(-1) }.to raise_error(RuntimeError)
    end

    it "Classifies deficient" do
      puts PerfectNumber.classify(13)
      expect(PerfectNumber.classify(13)).to be == "deficient"
    end

    it "Classifies perfect" do
      expect(PerfectNumber.classify(28)).to be == "perfect"
    end

    it "Classifies abundant" do
      expect(PerfectNumber.classify(12)).to be == "abundant"
    end
  end
end
