def my_reject(arr, &block)
  arr.select { |ele| !block.call(ele) }
end

def my_one?(arr, &block)
  arr.count { |ele| block.call(ele) } == 1
end

def hash_select(hash, &block)
end
