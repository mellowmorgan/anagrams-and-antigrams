# Anagrams and Antigrams Project

#### Created By _Morgan Waites_

#### _A program to check for anagrams and antigrams_

## Technologies Used

* ruby
* gems
* rspec
* pry
* dictionary_lookup

## Description

This program has a class Anagram with methods to check for anagrams, antigrams, and uses dictionary_lookup gem to make sure words/phrase agruments are valid. The script file takes user input to implement the class and its methods from the terminal.

## Setup/Installation Requirements

* In terminal, navigate to directory of where you'd like project to be and type 'git clone https://github.com/mellowmorgan/anagrams-and-antigrams.git' and hit enter
* Type 'cd anagrams-and-antigrams' and hit enter
* Type 'bundle install' and hit enter
* Type ruby anagram_script.rb to run program in terminal and hit enter
* To run tests, type rspec and hit enter
* If enter key produces ^M, exit out of script with CTRL+C and in terminal type 'stty sane' hit enter then re-run script (this is a common problem in terminal and stty sane should fix some terminal oddities)

## Known Bugs

* Allows users to input numbers
* Limitations of dictionary_lookup gem. It does not account for all plurals and tenses of words and result will say it is not a word in certain cases, even if it is. 

## License

[MIT](https://opensource.org/licenses/MIT)
Copyright (c) 2021 Morgan Waites
