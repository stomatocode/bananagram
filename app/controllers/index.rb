get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/anagram' do
  
  sorted_word_array = params[:word].split('').sort

  # p params[:word]

  # p sorted_word_array

  anagrams(sorted_word_array)

  erb :anagram_list
end


  def anagrams(sorted_word_array)
    @anagrams = []
    same_length_words = Word.where(length: sorted_word_array.length + 1)

    same_length_words.each do |dictionary_word|
      p dictionary_word[:word].chop.split('').sort
      if dictionary_word[:word].chop.split('').sort == sorted_word_array
        @anagrams << dictionary_word[:word]
      end
    end
    p @anagrams
    @anagrams
  end 
