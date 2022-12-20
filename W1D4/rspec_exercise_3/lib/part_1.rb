def is_prime?(n)
  return false if n < 2
  (2...n).each { |i| return false if n % i == 0 }
  true
end

def nth_prime(n)
  i = 1
  count = 0
  while count < n
    i += 1
    if is_prime?(i)
      count += 1
    end
  end

  i
end
