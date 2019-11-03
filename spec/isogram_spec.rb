require_relative '../lib/isogram'

describe Isogram do
  it "Tests empty string" do
    input = ""
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests isogram with only lower case characters" do
    input = "isogram"
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests word with one duplicated character" do
    input = "eleven"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests word with one duplicated character from the end of the alphabet" do
    input = "zzyzx"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests longest reported english isogram" do
    input = "subdermatoglyphic"
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests word with duplicated character in mixed case" do
    input = "Alphabet"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests word with duplicated character in mixed case lowercase first" do
    input = "alphAbet"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests hypothetical isogramic word with hyphen" do
    input = "thumbscrew-japingly"
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests hypothetical word with duplicated character following hyphen" do
    input = "thumbscrew-jappingly"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests isogram with duplicated hyphen" do
    input = "six-year-old"
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests made up name that is an isogram" do
    input = "Emily Jung Schwartzkopf"
    expect(Isogram.isogram?(input)).to be true
  end

  it "Tests duplicated character in the middle" do
    input = "accentor"
    expect(Isogram.isogram?(input)).to be false
  end

  it "Tests same first and last characters" do
    input = "angola"
    expect(Isogram.isogram?(input)).to be false
  end
end
