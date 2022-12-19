def my_map(arr, &block)
  new_arr = []
  arr.each { |ele| new_arr << block.call(ele) }
  new_arr
end

def my_select(arr, &block)
  arr.reject { |ele| !block.call(ele) }
end

def my_count(arr, &block)
  count = 0
  arr.each { |ele| count += 1 if block.call(ele) }
  count
end

def my_any?(arr, &block)
  arr.each { |ele| return true if block.call(ele) }
  false
end

def my_all?(arr, &block)
  arr.each { |ele| return false if !block.call(ele) }
  true
end

def my_none?(arr, &block)
  arr.each { |ele| return false if block.call(ele) }
  true
end
