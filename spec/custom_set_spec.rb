require_relative '../lib/../lib/custom_set'

describe CustomSet do
  it "test sets with no elements are empty" do
    set = CustomSet.new []
    expect(set).to be_empty
  end

  it "test sets with elements are not empty" do
    set = CustomSet.new [1]
    expect(set).to be_truthy
  end

  it "test nothing is contained in an empty set" do
    set = CustomSet.new []
    element = 1
    expect(set.member? element).to be_falsey
  end

  it "test when the element is in the set" do
    set = CustomSet.new [1, 2, 3]
    element = 1
    expect(set.member? element).to be_truthy
  end

  it "test when the element is not in the set" do
    set = CustomSet.new [1, 2, 3]
    element = 4
    expect(set.member? element).to be_falsey
  end

  it "test empty set is a subset of another empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expect(set1.subset? set2).to be_truthy
  end

  it "test empty set is a subset of non empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [1]
    expect(set1.subset? set2).to be_truthy
  end

  it "test non empty set is not a subset of empty set" do
    set1 = CustomSet.new [1]
    set2 = CustomSet.new []
    expect(set1.subset? set2).to be_falsey
  end

  it "test set is a subset of set with exact same elements" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [1, 2, 3]
    expect(set1.subset? set2).to be_truthy
  end

  it "test set is a subset of larger set with same elements" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [4, 1, 2, 3]
    expect(set1.subset? set2).to be_truthy
  end

  it "test set is not a subset of set that does not contain its elements" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [4, 1, 3]
    expect(set1.subset? set2).to be_falsey
  end

  it "test the empty set is disjoint with itself" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expect(set1.disjoint? set2).to be_truthy
  end

  it "test empty set is disjoint with non empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [1]
    expect(set1.disjoint? set2).to be_truthy
  end

  it "test empty set is disjoint with empty set" do
    set1 = CustomSet.new [1]
    set2 = CustomSet.new []
    expect(set1.disjoint? set2).to be_truthy
  end

  it "test sets are not disjoint if they share an element" do
    set1 = CustomSet.new [1, 2]
    set2 = CustomSet.new [2, 3]
    expect(set1.disjoint? set2).to be_falsey
  end

  it "test sets are disjoint if they share no elements" do
    set1 = CustomSet.new [1, 2]
    set2 = CustomSet.new [3, 4]
    expect(set1.disjoint? set2).to be_truthy
  end

  it "test empty sets are equal" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expect(set1).to eq set2
  end

  it "test empty set is not equal to non empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [1, 2, 3]
    expect(set1).not_to eq set2
  end

  it "test non empty set is not equal to empty set" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new []
    expect(set1).not_to eq set2
  end

  it "test sets with the same elements are equal" do
    set1 = CustomSet.new [1, 2]
    set2 = CustomSet.new [2, 1]
    expect(set1).to eq set2
  end

  it "test sets with different elements are not equal" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [1, 2, 4]
    expect(set1).not_to eq set2
  end

  it "test set is not equal to larger set with same elements" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [1, 2, 3, 4]
    expect(set1).not_to eq set2
  end

  it "test add to empty set" do
    set = CustomSet.new []
    expected = CustomSet.new [3]
    expect(expected).to eq set.add(3)
  end

  it "test add to not empty set" do
    set = CustomSet.new [1, 2, 4]
    expected = CustomSet.new [1, 2, 3, 4]
    expect(expected).to eq set.add(3)
  end

  it "test adding an existing element does not change the set" do
    set = CustomSet.new [1, 2, 3]
    expected = CustomSet.new [1, 2, 3]
    expect(expected).to eq set.add(3)
  end

  it "test intersection of two empty sets is an empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expected = CustomSet.new []
    expect(expected).to eq set2.intersection(set1)
  end

  it "test intersection of an empty set and non empty set is an empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [3, 2, 5]
    expected = CustomSet.new []
    expect(expected).to eq set2.intersection(set1)
  end

  it "test intersection of a non empty set and an empty set is an empty set" do
    set1 = CustomSet.new [1, 2, 3, 4]
    set2 = CustomSet.new []
    expected = CustomSet.new []
    expect(expected).to eq set2.intersection(set1)
  end

  it "test intersection of two sets with no shared elements is an empty set" do
    set1 = CustomSet.new [1, 2, 3]
    set2 = CustomSet.new [4, 5, 6]
    expected = CustomSet.new []
    expect(expected).to eq set2.intersection(set1)
  end

  it "test intersection of two sets with shared elements is a set of the shared elements" do
    set1 = CustomSet.new [1, 2, 3, 4]
    set2 = CustomSet.new [3, 2, 5]
    expected = CustomSet.new [2, 3]
    expect(expected).to eq set2.intersection(set1)
  end

  it "test difference of two empty sets is an empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expected = CustomSet.new []
    expect(expected).to eq set1.difference(set2)
  end

  it "test difference of empty set and non empty set is an empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [3, 2, 5]
    expected = CustomSet.new []
    expect(expected).to eq set1.difference(set2)
  end

  it "test difference of a non empty set and an empty set is the non empty set" do
    set1 = CustomSet.new [1, 2, 3, 4]
    set2 = CustomSet.new []
    expected = CustomSet.new [1, 2, 3, 4]
    expect(expected).to eq set1.difference(set2)
  end

  it "test difference of two non empty sets is a set of elements that are only in the first set" do
    set1 = CustomSet.new [3, 2, 1]
    set2 = CustomSet.new [2, 4]
    expected = CustomSet.new [1, 3]
    expect(expected).to eq set1.difference(set2)
  end

  it "test union of empty sets is an empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new []
    expected = CustomSet.new []
    expect(expected).to eq set1.union(set2)
  end

  it "test union of an empty set and non empty set is the non empty set" do
    set1 = CustomSet.new []
    set2 = CustomSet.new [2]
    expected = CustomSet.new [2]
    expect(expected).to eq set1.union(set2)
  end

  it "test union of a non empty set and empty set is the non empty set" do
    set1 = CustomSet.new [1, 3]
    set2 = CustomSet.new []
    expected = CustomSet.new [1, 3]
    expect(expected).to eq set1.union(set2)
  end

  it "test union of non empty sets contains all unique elements" do
    set1 = CustomSet.new [1, 3]
    set2 = CustomSet.new [2, 3]
    expected = CustomSet.new [3, 2, 1]
    expect(expected).to eq set1.union(set2)
  end

end
