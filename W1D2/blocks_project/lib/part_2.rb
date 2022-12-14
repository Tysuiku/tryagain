def all_words_capitalized?(words)
  words.all? { |word| word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase }
end

def no_valid_url?(urls)
end
