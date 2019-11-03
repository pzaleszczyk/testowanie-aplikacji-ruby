require_relative '../lib/simple_linked_list'

describe SimpleLinkedList do
  it "Tests element" do
    element = Element.new(1)
    expect(element.datum).to eq 1
  end

  it "Tests element can hold different value" do
    element = Element.new(10)
    expect(element.datum).to eq 10
  end

  it "Tests element next" do
    element = Element.new(1)
    expect(element.next).to be_nil
  end

  it "Tests element next can be assigned to" do
    first = Element.new(1)
    second = Element.new(2)
    first.next = second
    expect(second).to eq first.next
  end

  it "Tests list push" do
    list = SimpleLinkedList.new
    element = Element.new(1)
    expect(list).to eq list.push(element)
  end

  it "Tests list pop" do
    list = SimpleLinkedList.new
    element = Element.new(1)
    list.push(element)
    expect(element).to eq list.pop
  end

  it "Tests list pop empty" do
    list = SimpleLinkedList.new
    expect(list.pop).to be_nil
  end

  it "Tests list pop is last in first out" do
    list = SimpleLinkedList.new
    first = Element.new(1)
    second = Element.new(2)
    list.push(first).push(second)
    expect(second).to eq list.pop
  end

  it "Tests list to empty array" do
    list = SimpleLinkedList.new
    expect([]).to eq list.to_a
  end

  it "Tests list to single array" do
    list = SimpleLinkedList.new
    first = Element.new(1)
    list.push(first)
    expect([1]).to eq list.to_a
  end

  it "Tests list pop empty" do
    list = SimpleLinkedList.new
    expect(list.pop).to be_nil
  end

  it "Tests list multiple to array" do
    list = SimpleLinkedList.new
    first = Element.new(1)
    second = Element.new(2)
    third = Element.new(3)
    list.push(first).push(second).push(third)
    expect([3, 2, 1]).to eq list.to_a
  end

  it "Tests list create from array" do
    array = [1, 2, 3]
    list = SimpleLinkedList.new(array)
    expect([3, 2, 1]).to eq list.to_a
  end

  it "Tests list created from array still made up of elements" do
    array = [1, 2, 3]
    list = SimpleLinkedList.new(array)
    expect(Element).to eq list.pop.class
  end

  it "Tests list from array still acts as lifo" do
    array = [1, 2, 3]
    list = SimpleLinkedList.new(array)
    element = list.pop
    expect(3).to eq element.datum
  end

  it "Tests list in place reverse!" do
    first = Element.new(1)
    second = Element.new(2)
    third = Element.new(3)
    list = SimpleLinkedList.new
    list.push(first).push(second).push(third)
    expect([1, 2, 3]).to eq list.reverse!.to_a
  end

  it "Tests list in place reverse are the same elements" do
    first = Element.new(1)
    second = Element.new(2)
    list = SimpleLinkedList.new
    list.push(first).push(second)
    list.reverse!
    expect(first).to eq list.pop
    expect(second).to eq list.pop
  end

  it "Tests list reverse empty list" do
    list = SimpleLinkedList.new
    expect(list).to eq list.reverse!
  end

  it "Tests works for 1 through 10" do
    list = SimpleLinkedList.new(1..10)
    expected = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    expect(expected).to eq list.to_a
  end
end