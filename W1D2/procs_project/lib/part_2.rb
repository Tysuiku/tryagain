def reverser(str, &block)
  block.call(str.reverse)
end
