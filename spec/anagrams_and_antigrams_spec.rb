require("rspec")
require("anagrams_and_antigrams")

describe('#Antigram') do
  obj1 = Antigram.new("eat","tea")
  obj2 = Antigram.new("ate","tea")
  obj3 = Antigram.new("ate","teak")
  obj4 = Antigram.new("ktk","tkk")
  obj5 = Antigram.new("hello","pulp")
  obj6 = Antigram.new("pike","multnomah")
  obj7 = Antigram.new("i like tea too","o, i like to eat")
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj1.anagram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj2.anagram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj3.anagram_checker).to(eql("These words are NOT anagrams"))
  end
  it("should return 'These words are NOT anagrams' if one of words not valid") do
    expect(obj4.anagram_checker).to(eql("These words are NOT anagrams"))
  end
  it("should return true") do
    expect(obj2.are_words?).to(eql(true))
  end
  it("should return true") do
    expect(obj5.antigram?).to(eql(false))
  end
  it("should return true") do
    expect(obj6.antigram?).to(eql(true))
  end
  it("should return they are antigrams") do
    expect(obj6.anagram_checker).to(eql('These words have no letter matches and are antigrams.'))
  end
  it("should return they are antigrams") do
    expect(obj7.anagram_checker).to(eql("These words are anagrams"))
  end
end
