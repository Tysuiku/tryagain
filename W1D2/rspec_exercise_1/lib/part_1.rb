def average(x, y)
  (x + y) / 2.0
end

def average_array(nums)
  nums.sum / (nums.length * 1.0)
end

def repeat(str, n)
  new_str = ""
  n.times { new_str += str }
  new_str
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  new_sen = []
  sentence.split(" ").each_with_index do |word, i|
    if i % 2 == 0
      new_sen << word.upcase
    else
      new_sen << word.downcase
    end
  end

  new_sen.join(" ")
end
