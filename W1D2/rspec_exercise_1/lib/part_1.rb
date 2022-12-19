def average(n1, n2)
  (n1 + n2) / 2.0
end

def average_array(nums)
  nums.sum / (nums.length * 1.0)
end

def repeat(str, n)
  str * n
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  arr = []
  str.split(" ").each_with_index do |word, i|
    if i % 2 == 0
      arr << word.upcase
    else
      arr << word.downcase
    end
  end
  arr.join(" ")
end
