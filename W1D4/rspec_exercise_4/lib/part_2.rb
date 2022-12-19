def proper_factors(n)
  arr = []
  (1...n).each { |i| arr << i if n % i == 0 }
  arr
end

def aliquot_sum(n)
  proper_factors(n).sum
end

def perfect_number?(n)
  n == aliquot_sum(n)
end

def ideal_numbers(n)
  nums = []

  i = 1
  while nums.length < n
    nums << i if perfect_number?(i)
    i += 1
  end
  nums
end
