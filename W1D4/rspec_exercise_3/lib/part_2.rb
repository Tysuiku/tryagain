def element_count(arr)
  hash = {}
  arr.each do |ele|
    if !hash[ele]
      hash[ele] = 1
    else
      hash[ele] += 1
    end
  end
  hash
end

def char_replace!(str, hash)
  str.each_char.with_index do |char, i|
    str[i] = hash[char] if hash[char]
  end
  str
end

def product_inject(nums)
  nums.inject { |acc, ele| acc * ele }
end
