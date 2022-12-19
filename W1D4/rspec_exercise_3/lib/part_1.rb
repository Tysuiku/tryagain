def is_prime?(n)
  return false if n < 2
  (2...n).each { |i| return false if n % i == 0 }
  true
end

def nth_prime(n)
    while 
end