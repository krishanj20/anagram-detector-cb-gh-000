# Your code goes here!
class Anagram

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    letters = @word.split
    array.each do |word|
      letters_a = word.split
      counter = 0
      letters_a.each do |letter|
        puts letters
        if letters.include?(letter) #this line doesnt work
          letters -= [letter]
          counter += 1
          puts counter
        end
      if counter == letter.size
        matches << word
        counter = 0
      else
        counter = 0
      end
    end
  end
  matches
end

end

songa = Anagram.new("bleh")
songa.match(["blhe"])
