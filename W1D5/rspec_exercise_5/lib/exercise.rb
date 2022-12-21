def zip(*arr)
  length = arr.first.length
  new_arr = Array.new(length) { [] }
  (0...length).each do |i|
    arr.each do |sub_arr|
      new_arr[i] << sub_arr[i]
    end
  end

  new_arr
end

def prizz_proc(arr, prc1, prc2)
  arr.select { |ele| ele if (prc1.call(ele) || prc2.call(ele)) && !(prc1.call(ele) && prc2.call(ele)) }
end

def zany_zip(*arr)
  length = arr.map(&:length).max
  new_arr = Array.new(length) { [] }
  (0...length).each do |i|
    arr.each do |sub_arr|
      new_arr[i] << sub_arr[i]
    end
  end

  new_arr
end

def maximum(arr, &block)
  return nil if arr.length == 0
  result = arr[0]
  (0...arr.length).each { |i| result = arr[i] if block.call(arr[i]) >= block.call(result) }
  result
end

def my_group_by(arr, &block)
end
