def reverser(str, &block)
  block.call(str.reverse)
end

def word_changer(str, &block)
  arr = []
  str.split(" ").each do |word|
    arr << block.call(word)
  end
  arr.join(" ")
end

def greater_proc_value(n, prc1, prc2)
  return prc1.call(n) if prc1.call(n) > prc2.call(n)
  prc2.call(n)
end

def and_selector(arr, prc1, prc2)
  arr.select { |ele| ele if prc1.call(ele) && prc2.call(ele) }
end

def alternating_mapper(arr, prc1, prc2)
  new_arr = []
  arr.each_with_index do |ele, i|
    if i % 2 == 0
      new_arr << prc1.call(ele)
    else
      new_arr << prc2.call(ele)
    end
  end
  new_arr
end
