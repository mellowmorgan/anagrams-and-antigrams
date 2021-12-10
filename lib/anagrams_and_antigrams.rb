require("pry")

class Antigram
  attr_accessor(:word1)
  attr_accessor(:word2)
  
  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def antigram_checker
    same=false
    arr1 = @word1.split("").sort
    arr2 = @word2.split("").sort
    for i in 0..arr1.length-1
      if arr1[i]==arr2[i]
        same=true
      else 
        return 'These words are NOT anagrams'
      end
    end
    if same && @word1.length==@word2.length
    'These words are anagrams'
    end
  end
end