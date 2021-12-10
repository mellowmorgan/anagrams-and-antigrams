require("rspec")
require("anagrams_and_antigrams")

describe('#Antigram') do
  obj1 = Antigram.new("eat","tea")
  obj2 = Antigram.new("ate","tea")
  obj3 = Antigram.new("ate","teak")
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj1.antigram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj2.antigram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj3.antigram_checker).to(eql("These words are NOT anagrams"))
  end
end
