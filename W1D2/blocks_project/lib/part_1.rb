def select_even_nums(nums)
  nums.select(&:even?)
end

def reject_puppies(dogs)
  dogs.reject { |dog| dog["age"] <= 2 }
end

def count_positive_subarrays(arr)
  arr.count { |sub_arr| sub_arr.sum >= 1 }
end

def aba_translate(word)
  vowel = "aeiouAEIOU"
  aba_word = ""
  (0...word.length).each do |i|
    if vowel.include?(word[i])
      aba_word += word[i] + "b" + word[i]
    else
      aba_word += word[i]
    end
  end

  aba_word
end

def aba_array(words)
  words.map { |word| aba_translate(word) }
end
