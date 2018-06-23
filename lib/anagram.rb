# Your code goes here!
class Anagram

  def initialize(word)
    @word = word
  end

  def match(array) #array is the list of words which could be an anagrams
    matches = []
    array.each do |anagram| #gets each word in the list
      split_word = @word.split("")
      split_anagram = anagram.split("")
      counter = 0 #checking each word
      split_anagram.each do |letter|
        if split_word.include?(letter)
          split_word.delete(letter)
          counter += 1
        end
      end
      if counter == @word.length
        matches << anagram
      end
    end
    return matches
  end

end

songa = Anagram.new("bleh")
songa.match(["blhe"])
