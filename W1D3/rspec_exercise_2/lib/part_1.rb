def partition(arr, n)
  greater = []
  less = []
  new_arr = []
  arr.each do |ele|
    if ele < n
      less << ele
    else
      greater << ele
    end
  end
  new_arr << less
  new_arr << greater
  new_arr
end

def merge(hash1, hash2)
end
