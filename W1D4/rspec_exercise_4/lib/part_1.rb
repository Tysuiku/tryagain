def my_reject(arr, &block)
  arr.select { |ele| ele if !block.call(ele) }
end

def my_one?(arr, &block)
  arr.count { |ele| block.call(ele) } == 1
end

def hash_select(hash, &block)
  hash.reject! { |k, v| k[v] if !block.call(k, v) }
  hash
end
