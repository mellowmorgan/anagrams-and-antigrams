require("rspec")
require("anagrams_and_antigrams")

describe('#Anagram') do
  obj1 = Anagram.new("eat","tea")
  obj2 = Anagram.new("ate","tea")
  obj3 = Anagram.new("ate","teak")
  obj4 = Anagram.new("ktk","tkk")
  obj5 = Anagram.new("hello","pulp")
  obj6 = Anagram.new("nap","icky")
  obj7 = Anagram.new("i like to eat", "i like to tea")
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj1.anagram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj2.anagram_checker).to(eql("These words are anagrams"))
  end
  it("should return 'These words are anagrams' if two words are anagrams") do
    expect(obj3.anagram_checker).to(eql("These words are NOT anagrams"))
  end
  it("should return 'One of both of these are not words at all' if one of words not valid") do
    expect(obj4.anagram_checker).to(eql("One of both of these are not words at all"))
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
  it("should return array of words found in dictionary") do
    expect(obj5.word_lookup("hellop")).to(eql(0))
  end
  it("should return array of words found in dictionary") do
    expect(obj5.word_lookup("hello")).to(eql(1))
  end
end
