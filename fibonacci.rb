# recursive fibonacci
# def recursive_fibonacci(n)
#   return n if n <= 1
#   fibonacci(n - 1) + fibonacci(n - 2)
# end

# array fibonacci
def table_fibonacci(n)
  return n if n <= 1
  f = []
  f[0] = 0
  f[1] = 1
  (2..n).each do |i|
    f[i] = f[i - 1] + f[i - 2]
  end
  f[n]
end

# memoization_fibonacci
# def fib(n)
#   @cache = [0, 1]
#   return @cache[n] if n <= 1
#   result = 0
#   (0..n).each do
#     result = @cache[0] + @cache[1]
#     @cache[0] = @cache[1]
#     @cache[1] = result
#   end
#   result
# end

# proplem : get last digit if n-th fibonacci
# by observiation found that every 60 elements last digit repeated
# so save last digit from 0 -> 60 in array and map n % 60 to this array
def fibonacci_last_digit(n)
  return n if n <= 1
  f = []
  f[0] = 0
  f[1] = 1
  (2..60).each do |i|
    f[i] = (f[i - 1] + f[i - 2]) % 10
  end
  f[n % 60]
end
