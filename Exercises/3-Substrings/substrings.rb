def substrings(phrase, dictionary)
  discovered = {}
  phrase.split(" ").each do | phrase_word |
    dictionary.each do |dictionary_word|
      if phrase_word.downcase.include?(dictionary_word.downcase)
        discovered[dictionary_word] = (discovered.include?(dictionary_word) ? discovered[dictionary_word]+1 : 1)
      end
    end
  end
  discovered.sort.to_h
end