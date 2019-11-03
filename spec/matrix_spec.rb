require_relative '../lib/matrix'

describe Matrix do
  it "Extracts a row" do
    matrix = Matrix.new("1 2\n10 20")
    expect([1, 2]).to eq matrix.rows[0]
  end

  it "Extracts same row again" do
    matrix = Matrix.new("9 7\n8 6")
    expect([9, 7]).to eq matrix.rows[0]
  end

  it "Extracts other row" do
    matrix = Matrix.new("9 8 7\n19 18 17")
    expect([19, 18, 17]).to eq matrix.rows[1]
  end

  it "Extracts other row again" do
    matrix = Matrix.new("1 4 9\n16 25 36")
    expect([16, 25, 36]).to eq matrix.rows[1]
  end

  it "Extracts a column" do
    matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
    expect([1, 4, 7, 8]).to eq matrix.columns[0]
  end

  it "Extracts another column" do
    matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
    expect([1903, 3, 4]).to eq matrix.columns[1]
  end
end
