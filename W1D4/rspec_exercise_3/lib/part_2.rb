def element_count(arr)
  hash = {}
  arr.each do |i|
    if !hash[i]
      hash[i] = 1
    else
      hash[i] += 1
    end
  end
  hash
end

def char_replace!(str, hash)
  (0...str.length).each do |i|
    str[i] = hash[str[i]] if hash[str[i]]
  end

  str
end

def product_inject(nums)
  nums.inject { |acc, el| acc * el }
end
