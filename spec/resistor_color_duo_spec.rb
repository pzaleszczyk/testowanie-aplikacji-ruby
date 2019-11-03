require_relative '../lib/resistor_color_duo'

describe ResistorColorDuo do
  it "Tests brown and black" do
    expect(10).to eq ResistorColorDuo.value(["brown", "black"])
  end

  it "Tests blue and grey" do
    expect(68).to eq ResistorColorDuo.value(["blue", "grey"])
  end

  it "Tests yellow and violet" do
    expect(47).to eq ResistorColorDuo.value(["yellow", "violet"])
  end

  it "Tests orange and orange" do
    expect(33).to eq ResistorColorDuo.value(["orange", "orange"])
  end

  it "Ignores additional colors" do
    expect(51).to eq ResistorColorDuo.value(["green", "brown", "orange"])
  end
end
