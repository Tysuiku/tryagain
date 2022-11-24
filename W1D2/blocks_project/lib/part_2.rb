def all_words_capitalized?(words)
  words.all? { |word| word.start_with?(word[0].upcase) && word[1..-1] == word[1..-1].downcase }
end

def no_valid_url?(urls)
  valid = [".com", ".net", ".io", ".org"]

  urls.none? do |url|
    valid.any? { |ends| url.include?(ends) }
  end
end

def any_passing_students?(students)
  students.any? { |student| student[:grades].sum / student[:grades].length >= 75 }
end
