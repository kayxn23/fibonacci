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
  z = 1

  (n - 1).times do
    z = x + y
    x = y
    y = z
  end
  return z
end

# 2 3 5 8 13
# loop1
# x = 2
# y = 3
# z = x + y
#
# loop2
# y = x + y (5)
# x = x + 1 (3)
# z = x + y (8)
#
# loop3
# y = x + y (8)
# x = x + 1 (4)
# z = x + y (12)
#
# loop4
# y = x + y (12)
# x = x + 1 (5)
# z =
