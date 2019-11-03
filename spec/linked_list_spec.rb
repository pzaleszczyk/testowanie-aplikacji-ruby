require_relative '../lib/../lib/linked_list'

describe Deque do
  it "Tests push pop" do
    deque = Deque.new
    deque.push(10)
    deque.push(20)
    expect(20).to eq deque.pop
    expect(10).to eq deque.pop
  end

  it "Tests push shift" do
    deque = Deque.new
    deque.push(10)
    deque.push(20)
    expect(10).to eq deque.shift
    expect(20).to eq deque.shift
  end

  it "Tests unshift shift" do
    deque = Deque.new
    deque.unshift(10)
    deque.unshift(20)
    expect(20).to eq deque.shift
    expect(10).to eq deque.shift
  end

  it "Tests unshift pop" do
    deque = Deque.new
    deque.push(10)
    deque.push(20)
    expect(20).to eq deque.pop
    deque.push(30)
    expect(10).to eq deque.shift
    deque.unshift(40)
    deque.push(50)
    expect(40).to eq deque.shift
    expect(50).to eq deque.pop
    expect(30).to eq deque.shift
  end

  it "Tests pop to empty" do
    deque = Deque.new
    deque.push(10)
    expect(10).to eq deque.pop
    deque.push(20)
    expect(20).to eq deque.shift
  end

  it "Tests shift to empty" do
    deque = Deque.new
    deque.unshift(10)
    expect(10).to eq deque.shift
    deque.unshift(20)
    expect(20).to eq deque.pop
  end
end