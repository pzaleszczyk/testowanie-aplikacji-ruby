require_relative '../lib/../lib/acronym'

describe Acronym do
  it "test basic" do
    expect('PNG').to eq Acronym.abbreviate('Portable Network Graphics')
  end

  it "test lowercase words" do
    expect('ROR').to eq Acronym.abbreviate('Ruby on Rails')
  end

  it "test punctuation" do
    expect('FIFO').to eq Acronym.abbreviate('First In, First Out')
  end

  it "test all caps word" do
    expect('GIMP').to eq Acronym.abbreviate('GNU Image Manipulation Program')
  end

  it "test punctuation without whitespace" do
    expect('CMOS').to eq Acronym.abbreviate('Complementary metal-oxide semiconductor')
  end

  it "test very long abbreviation" do
    expect('ROTFLSHTMDCOALM').to eq Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')
  end

  it "test consecutive delimiters" do
    expect('SIMUFTA').to eq Acronym.abbreviate('Something - I made up from thin air')
  end

end