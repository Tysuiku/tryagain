def my_reject(arr, &block)
  arr.select { |ele| !block.call(ele) }
end

def my_one?(arr, &block)
  arr.count { |ele| block.call(ele) } == 1
end

def hash_select(hash, &block)
  new_hash = {}
  hash.each do |k, v|
    new_hash[k] = v if block.call(k, v)
  end

  new_hash
end

def xor_select(arr, prc1, prc2)
  arr.select { |ele| (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele)) }
end

def proc_count(v, arr)
  arr.count { |prc| prc.call(v) }
end
