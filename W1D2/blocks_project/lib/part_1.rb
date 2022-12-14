def select_even_nums(nums)
  nums.select { |num| num.even? }
end

def reject_puppies(dogs)
  dogs.reject { |hash| hash["age"] <= 2 }
end

def count_positive_subarrays(arr)
  arr.count { |sub_arr| sub_arr.sum > 0 }
end

def aba_translate(word)
  str = ""
  vowel = "aeiou"
  (0...word.length).each do |i|
    if vowel.include?(word[i])
      str += word[i] + "b" + word[i]
    else
      str += word[i]
    end
  end

  str
end

def aba_array(words)
  words.map { |word| aba_translate(word) }
end
