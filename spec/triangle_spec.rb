require_relative '../lib/triangle'

describe Triangle do
  it "Tests if triangle is equilateral if all sides are equal" do
    triangle = Triangle.new([2, 2, 2])
    expect(triangle.equilateral?).to be true
  end

  it "Tests if triangle is not equilateral if no sides are equal" do
    triangle = Triangle.new([5, 4, 6])
    expect(triangle.equilateral?).to be false
  end

  it "Tests all zero sides are illegal" do
    triangle = Triangle.new([0, 0, 0])
    expect(triangle.equilateral?).to be false
  end

  it "Tests equilateral triangle sides may be floats" do
    triangle = Triangle.new([0.5, 0.5, 0.5])
    expect(triangle.equilateral?).to be true
  end

  it "Tests triangle is isosceles if last two sides are equal" do
    triangle = Triangle.new([3, 4, 4])
    expect(triangle.isosceles?).to be true
  end

  it "Tests triangle is isosceles if first two sides are equal" do
    triangle = Triangle.new([4, 4, 3])
    expect(triangle.isosceles?).to be true
  end

  it "Tests triangle is isosceles if first and last sides are equal" do
    triangle = Triangle.new([4, 3, 4])
    expect(triangle.isosceles?).to be true
  end

  it "Tests equilateral triangles are also isosceles" do
    triangle = Triangle.new([4, 4, 4])
    expect(triangle.isosceles?).to be true
  end

  it "Tests triangle is not isosceles if no sides are equal" do
    triangle = Triangle.new([2, 3, 4])
    expect(triangle.isosceles?).to be false
  end

  it "Tests sides that violate triangle inequality are not isosceles even if two are equal 1" do
    triangle = Triangle.new([1, 1, 3])
    expect(triangle.isosceles?).to be false
  end

  it "Tests sides that violate triangle inequality are not isosceles even if two are equal 2" do
    triangle = Triangle.new([1, 3, 1])
    expect(triangle.isosceles?).to be false
  end

  it "Tests sides that violate triangle inequality are not isosceles even if two are equal 3" do
    triangle = Triangle.new([3, 1, 1])
    expect(triangle.isosceles?).to be false
  end

  it "Tests isosceles triangle sides may be floats" do
    triangle = Triangle.new([0.5, 0.4, 0.5])
    expect(triangle.isosceles?).to be true
  end

  it "Tests triangle is scalene if no sides are equal" do
    triangle = Triangle.new([5, 4, 6])
    expect(triangle.scalene?).to be true
  end

  it "Tests triangle is not scalene if all sides are equal" do
    triangle = Triangle.new([4, 4, 4])
    expect(triangle.scalene?).to be false
  end

  it "Tests triangle is not scalene if two sides are equal" do
    triangle = Triangle.new([4, 4, 3])
    expect(triangle.scalene?).to be false
  end

  it "Tests sides that violate triangle inequality are not scalene even if they are all different" do
    triangle = Triangle.new([7, 3, 2])
    expect(triangle.scalene?).to be false
  end

  it "Tests scalene triangle sides may be floats" do
    triangle = Triangle.new([0.5, 0.4, 0.6])
    expect(triangle.scalene?).to be true
  end
end