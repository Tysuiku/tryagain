def partition(arr, n)
  greater = []
  less = []
  new_arr = []
  arr.each do |ele|
    if ele < n
      less << ele
    else
      greater << ele
    end
  end
  new_arr << less
  new_arr << greater
  new_arr
end

def merge(hash1, hash2)
  hash = {}
  hash1.each { |k, v| hash[k] = v }
  hash2.each { |k, v| hash[k] = v }
  hash
end

def censor(sentence, curse_words)
  new_sen = []
  vowels = "aeiouAEIOU"
  sentence.split(" ").each do |word|
    if curse_words.include?(word)
      word.each_char.with_index { |char| word[i] = "*" if vowels.include?(char) }
      new_sen << word
    else
      new_sen << word
    end
  end
  new_sen
end
