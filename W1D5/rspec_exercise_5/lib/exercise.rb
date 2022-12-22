def zip(*arr)
  length = arr.first.length
  new_arr = Array.new(length) { [] }
  (0...length).each do |i|
    arr.each do |sub_arr|
      new_arr[i] << sub_arr[i]
    end
  end

  new_arr
end

def prizz_proc(arr, prc1, prc2)
  arr.select { |ele| ele if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele)) }
end

def zany_zip(*arr)
  length = arr.map(&:length).max
  new_arr = Array.new(length) { [] }
  (0...length).each do |i|
    arr.each do |sub_arr|
      new_arr[i] << sub_arr[i]
    end
  end

  new_arr
end

def maximum(arr, &block)
  return nil if arr.length == 0
  result = arr[0]
  (0...arr.length).each { |i| result = arr[i] if block.call(arr[i]) >= block.call(result) }
  result
end

def my_group_by(arr, &block)
  hash = {}
  arr.each do |i|
    if hash[block.call(i)]
      hash[block.call(i)] << i
    else
      hash[block.call(i)] = [i]
    end
  end

  hash
end

def max_tie_breaker(arr, prc, &block)
  return nil if arr.length == 0
  max = arr[0]
  arr.each do |i|
    result_el = block.call(i)
    result_max = block.call(max)
    if result_el > result_max
      max = i
    elsif result_el == result_max && prc.call(i) > prc.call(max)
      max = i
    end
  end

  max
end

def change_word(word)
  indicies = vowel_indicies(word)
  word[indicies.first..indicies.last]
end

def vowel_indicies(word)
  vowels = "aeiou"
  indicies = []
  word.each_char.with_index { |char, i| indicies << i if vowels.include?(char) }
  indicies
end

def silly_syllables(sen)
  words = sen.split(" ")
  arr = words.map do |word|
    if vowel_indicies(word).length < 2
      word
    else
      change_word(word)
    end
  end

  arr.join(" ")
end
