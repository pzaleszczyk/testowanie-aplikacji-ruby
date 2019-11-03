require_relative '../lib/nth_prime'

describe Prime do
  it "Tests first prime" do
    expect(2).to eq Prime.nth(1)
  end

  it "Tests second prime" do
    expect(3).to eq Prime.nth(2)
  end

  it "Tests sixth prime" do
    expect(13).to eq Prime.nth(6)
  end

  it "Tests big prime" do
    expect(3).to eq Prime.nth(2)
  end

  it "Tests second prime" do
    expect(104743).to eq Prime.nth(10001)
  end

  it "Tests there is no zeroth prime" do
    expect { Prime.nth(0) }.to raise_error(ArgumentError)
  end
end