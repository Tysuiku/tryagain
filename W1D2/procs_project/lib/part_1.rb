def my_map(arr, &block)
  new_arr = []
  arr.each do |ele|
    new_arr << block.call(ele)
  end
  new_arr
end

def my_select(arr, &block)
  new_arr = []
  arr.each do |ele|
    if block.call(ele)
      new_arr << ele
    end
  end
  new_arr
end

def my_count(arr, &block)
  count = 0
  arr.each do |ele|
    if block.call(ele)
      count += 1
    end
  end
  count
end

def my_any?(arr, &block)
  arr.each do |ele|
    if block.call(ele)
      return true
    end
  end
  false
end

def my_all?(arr, &block)
  arr.each do |ele|
    if !block.call(ele)
      return false
    end
  end
  true
end

def my_none?(arr, &block)
  arr.each do |ele|
    if block.call(ele)
      return false
    end
  end
  true
end
