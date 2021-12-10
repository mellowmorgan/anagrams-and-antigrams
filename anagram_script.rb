#!/usr/bin/ruby
require ('./lib/anagrams_and_antigrams')


puts "******************"
puts "Anagram and Antigram Checker"
puts "Enter 'quit' at any time to exit"
puts "******************"
input = ""
while(input!="quit")
  puts "Enter word or phrase #1: " 
  input=gets.chomp
    if input=="quit"
      break
    end
  word1=input
  puts "Enter word or phrase #2: "
  input=gets.chomp
  if input=="quit"
    break
  end
  word2=input
  obj=Anagram.new(word1,word2)
  result = obj.anagram_checker
  puts result
  if (obj.put_palindromes)
    puts obj.put_palindromes
  end
  puts
end



