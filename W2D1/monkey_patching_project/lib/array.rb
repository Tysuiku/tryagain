# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    self.max - self.min
  end

  def average
    return nil if self.empty?
    self.sum / (self.length * 1.0)
  end

  def median
    return nil if self.empty?

    mid_idx = self.length / 2
    sorted = self.sort
    if self.length.odd?
      return sorted[mid_idx]
    else
      return (sorted[mid_idx - 1] + sorted[mid_idx]) / 2.0
    end
  end

  def counts
    hash = Hash.new(0)
    self.each { |ele| hash[ele] += 1 }
    hash
  end

  def my_count(v)
    counter = 0
    self.each { |ele| counter += 1 if ele == v }
    counter
  end

  def my_index(v)
    return nil if !self.include? v

    self.each_with_index { |ele, i| return i if ele == v }
  end

  def my_uniq
    arr = []
    self.each { |ele| arr << ele if !arr.include? ele }
    arr
  end

  def my_transpose
    arr = Array.new(self.length) { [] }

    self.each_with_index do |ele, i|
      self.each_with_index do |ele, j|
        arr[i] << self[j][i]
      end
    end

    arr
  end
end
