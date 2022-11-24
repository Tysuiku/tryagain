# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(n)
  i = n
  while i >= 2
    if prime?(i) && n % i == 0
      return i
    end
    i -= 1
  end
end

def prime?(num)
  return false if num < 2

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end

  true
end

def unique_chars?(string)
  hash = {}
  string.each_char do |char|
    if !hash[char]
      hash[char] = 1
    else
      hash[char] += 1
    end
  end
  hash.all? { |k, v| v < 2 }
end

def dupe_indices(arr)
  hash = Hash.new { |h, k| h[k] = [] }

  arr.each_with_index do |ele, i|
    hash[ele] << i
  end

  hash.select { |k, v| v.length > 1 }
end

def ana_array(arr_1, arr_2)
  hash_1 = ele_hash(arr_1)
  hash_2 = ele_hash(arr_2)
  hash_1 == hash_2
end

def ele_hash(arr)
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
