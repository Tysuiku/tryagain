# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
  return false if num < 2

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end

  true
end

def largest_prime_factor(num)
  num.downto(2) { |i| return i if prime?(i) && num % i == 0 }
end

def unique_chars?(str)
  obj = {}
  str.each_char do |i|
    if obj[i]
      return false
    else
      obj[i] = 1
    end
  end

  true
end

def dupe_indices(arr)
  obj = {}
  arr.each_with_index do |ele, i|
    if obj[ele]
      obj[ele] << i
    else
      obj[ele] = [i]
    end
  end
  obj.filter { |k, v| v.length > 1 }
end

def ana_array(x, y)
  obj_1 = {}
  obj_2 = {}

  x.each { |ele| obj_1[ele] ? obj_1[ele] += 1 : obj_1[ele] = 1 }
  y.each { |ele| obj_2[ele] ? obj_2[ele] += 1 : obj_2[ele] = 1 }

  obj_1 == obj_2
end
