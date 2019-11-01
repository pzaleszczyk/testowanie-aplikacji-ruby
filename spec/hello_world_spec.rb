require_relative '../lib/hello_world'
describe HelloWorld do
  it "say hello" do
    expect(HelloWorld.hello).to eq "Hello, World!"
  end
end
