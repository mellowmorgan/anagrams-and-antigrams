require("rspec")
require("anagrams_and_antigrams")

describe('#Antigram') do
  obj1 = Antigram.new("eat","tea")
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj1.antigram_checker).to(eql("These words are anagrams"))
  end
end
