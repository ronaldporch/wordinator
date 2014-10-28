class Anagram

  attr_accessor :first, :second
  def initialize(word1, word2)
    @first = word1
    @second = word2
  end

  def anagram?
    test = @first.downcase.delete(' ').chars.sort.join == @second.downcase.delete(' ').chars.sort.join
    test ? "This is an Anagram" : "This is not an Anagram"
  end
end
