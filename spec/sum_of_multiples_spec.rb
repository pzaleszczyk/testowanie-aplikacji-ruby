require_relative '../lib/sum_of_multiples'

describe SumOfMultiples do
  it "Tests no multiples within limit" do
    som = SumOfMultiples.new(3, 5)
    expect(som.to(1)).to eq 0
  end

  it "Tests one factor has multiples within limit" do
    som = SumOfMultiples.new(3, 5)
    expect(som.to(4)).to eq 3
  end

  it "Tests more than one multiple within limit" do
    som = SumOfMultiples.new(3)
    expect(som.to(7)).to eq 9
  end

  it "Tests more than one factor with multiples within limit" do
    som = SumOfMultiples.new(3, 5)
    expect(som.to(10)).to eq 23
  end

  it "Tests each multiple is only counted once" do
    som = SumOfMultiples.new(3, 5)
    expect(som.to(100)).to eq 2_318
  end

  it "Tests a much larger limit" do
    som = SumOfMultiples.new(3, 5)
    expect(som.to(1_000)).to eq 233_168
  end

  it "Tests three factors" do
    som = SumOfMultiples.new(7, 13, 17)
    expect(som.to(20)).to eq 51
  end

  it "Tests factors not relatively prime" do
    som = SumOfMultiples.new(4, 6)
    expect(som.to(15)).to eq 30
  end

  it "Tests some pairs of factors relatively prime and some not" do
    som = SumOfMultiples.new(5, 6, 8)
    expect(som.to(150)).to eq 4_419
  end

  it "Tests one factor is a multiple of another" do
    som = SumOfMultiples.new(5, 25)
    expect(som.to(51)).to eq 275
  end

  it "Tests much larger factors" do
    som = SumOfMultiples.new(43, 47)
    expect(som.to(10_000)).to eq 2_203_160
  end

  it "Tests all numbers are multiples of 1" do
    som = SumOfMultiples.new(1)
    expect(som.to(100)).to eq 4_950
  end

  it "Tests no factors means an empty sum" do
    som = SumOfMultiples.new()
    expect(som.to(10_000)).to eq 0
  end

  it "Tests the only multiple of 0 is 0" do
    som = SumOfMultiples.new(0)
    expect(som.to(1)).to eq 0
  end

  it "Tests solutions using include exclude must extend to cardinality greater than 3" do
    som = SumOfMultiples.new(2, 3, 5, 7, 11)
    expect(som.to(10_000)).to eq 39_614_537
  end
end