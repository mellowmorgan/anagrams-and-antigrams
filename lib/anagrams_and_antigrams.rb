require("pry")

class Antigram
  attr_accessor(:word1)
  attr_accessor(:word2)
  
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

  def anagram_checker
    same=false
    arr1 = @word1.split("").sort
    arr2 = @word2.split("").sort
    for i in 0..arr1.length-1 do
      if arr1[i]==arr2[i]
        same=true
      else 
        return 'These words are NOT anagrams'
      end
    end
    if same && @word1.length==@word2.length && are_words?
      'These words are anagrams'
    else
      'These words are NOT anagrams'
    end
  end
end