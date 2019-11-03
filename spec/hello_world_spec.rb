require_relative '../lib/hello_world'
describe HelloWorld do
  it "Says Hello, World" do
    expect(HelloWorld.hello).to eq "Hello, World!"
  end
end
