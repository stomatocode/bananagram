get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/anagram' do
  
  @sorted_word_array = params[:word].split.sort

  def anagrams(word)
    same_length_words = Word.where(length: word.length)
    same_length_words.each

    end
  end 

  anagrams(@sorted_word_array)

  erb :anagram_list
end
