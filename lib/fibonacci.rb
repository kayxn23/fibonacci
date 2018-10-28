# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  raise ArgumentError if n.nil?
  raise ArgumentError if n < 0
  return 0 if n == 0

  x = 0
  y = 1
  z = x + y # z starts with 1

  while z < n
    x = y
    y = z
    z = x + y
  end
  return z
end

# 0 1 1 2 3 5 8 13 21 34 55 89 144
