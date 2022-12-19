def reverser(str, &block)
  block.call(str.reverse)
end

def word_changer(str, &block)
  arr = str.split(" ").map { |ele| block.call(ele) }
  arr.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  return prc_1.call(num) if prc_1.call(num) > prc_2.call(num)
  prc_2.call(num)
end

def and_selector(arr, prc_1, prc_2)
  arr.select { |ele| prc_1.call(ele) && prc_2.call(ele) }
end

def alternating_mapper(arr, prc_1, prc_2)
  new_arr = []
  arr.each_with_index do |ele, i|
    if i % 2 == 0
      new_arr << prc_1.call(ele)
    else
      new_arr << prc_2.call(ele)
    end
  end
  new_arr
end
