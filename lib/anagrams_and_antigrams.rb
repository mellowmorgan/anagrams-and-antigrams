require("pry")
require 'dictionary_lookup'


class Antigram
  attr_accessor(:word1)
  attr_accessor(:word2)
  
  def word_lookup(word)
    results = DictionaryLookup::Base.define(word)
    results.count
  end

  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end
  def are_words?
    checker1=false
    checker2=false
    vowels = ['a','e','i','o','u']
    vowels.each do |vowel|
      if @word1.include?(vowel)
        checker1=true
      end
      if @word2.include?(vowel)
        checker2=true
      end
    end
    if checker1 && checker2
      true
    else
      false
    end
  end
  def antigram?
    word1_arr = @word1.split("")
    word1_arr.each do |letter|
      if @word2.include?(letter)
        return false
      end
    end
    true
  end

  def anagram_checker
    same=false
    @word1=@word1.gsub(/[^a-z0-9]/,'').downcase
    @word2=@word2.gsub(/[^a-z0-9]/,'').downcase
    arr1 = @word1.split("").sort
    arr2 = @word2.split("").sort
    for i in 0..arr1.length-1 do
      if arr1[i]==arr2[i]
        same=true
      end
    end
    if same && @word1.length==@word2.length && are_words?
      'These words are anagrams'
    else
      if antigram?
        'These words have no letter matches and are antigrams.'
      else
        'These words are NOT anagrams'
      end
    end
  end

  
end