require ('pry')

module Palindrome
  def is_palindrome?(text)
    text=text.gsub(/[^a-z0-9]/,'')
    if text==text.reverse
      true
    else
      false
    end
  end
end
