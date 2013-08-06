words = IO.readlines('words')

words.each do |word|
  Word.create!(word: word)
end
