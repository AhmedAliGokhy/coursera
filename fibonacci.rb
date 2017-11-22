# recursive fibonacci
def recursive_fibonacci(n)
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

# array fibonacci
def table_fibonacci(n)
  return n if n <= 1
  f = []
  f[0] = 0
  f[1] = 1
  (2..n).each_with_index do |_val, i|
    f[i] = f[i - 1] + f[i - 2]
  end
  f[-1]
end
