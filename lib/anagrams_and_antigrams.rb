require("pry")
require ('dictionary_lookup')
require ('palindrome')

class Anagram
  include Palindrome

  attr_accessor(:word1)
  attr_accessor(:word2)

  def initialize(word1,word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def word_lookup(word)
    results = DictionaryLookup::Base.define(word)
    results.count
  end

  def are_words?
    @word1.gsub(/[^a-z0-9 ]/,'').split(" ").each do |word|
      if word_lookup(word)==0
        return false
      end
    end
    @word2.gsub(/[^a-z0-9 ]/,'').split(" ").each do |word|
      if word_lookup(word)==0
        return false
      end
    end
    true
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
  def put_palindromes
    word1_no_space=@word1.gsub(/[^a-z0-9]/,'')
    word2_no_space=@word2.gsub(/[^a-z0-9]/,'')
    if is_palindrome?(word1_no_space) && is_palindrome?(word2_no_space)
      "#{word1} and #{word2} are palindromes" 
    elsif is_palindrome?(word1_no_space)
      "#{word1} is a palindrome"
    elsif is_palindrome?(word2_no_space)
      "#{word2} is a palindrome"  
    else
      false
    end
  end
  def anagram_checker
    same=false
    word1_no_space=@word1.gsub(/[^a-z0-9]/,'')
    word2_no_space=@word2.gsub(/[^a-z0-9]/,'')
    arr1 = word1_no_space.split("").sort
    arr2 = word2_no_space.split("").sort
    for i in 0..arr1.length-1 do
      if arr1[i]==arr2[i]
        same=true
      end
    end
    if same && word1_no_space.length==word2_no_space.length && are_words?
      'These words are anagrams' 
    else
      if !are_words?
        'One of both of these are not words at all'
      elsif word1_no_space=="" || word2_no_space==""
        'Please enter something'
      elsif antigram? 
        'These words have no letter matches and are antigrams.'
      else
        'These words are NOT anagrams'
      end
    end
  end
end