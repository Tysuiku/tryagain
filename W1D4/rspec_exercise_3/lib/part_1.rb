def is_prime?(n)
  return false if n < 2
  (2...n).each { |i| return false if n % i == 0 }
  true
end

def nth_prime(n)
  i = 2
  count = 0
  while count <= n
    count += 1 if is_prime?(i)
    return i if count == n && is_prime?(i)
    i += 1
  end
end

def prime_range(min, max)
  (min..max).select { |n| n if is_prime?(n) }
end
