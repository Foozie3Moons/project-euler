# Starting in the top left corner of a 1×1 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 10×10 grid?
# --------->
# xxxx xxxx |
# x  x x  x |
# xxxx xxxx |
# xxxx xxxx |
# x  x x  x |
# xxxx xxxx V

# 0, 1, 2,
# 0, 1, 2
# 0, 1, 2

# (0,0) => (0,1) => (0,2) => (1,2) => (2,2)
# (0,0) => (0,1) => (1,1) => (1,2) => (2,2)
# (0,0) => (0,1) => (1,1) => (2,1) => (2,2)
# (0,0) => (1,0) => (1,1) => (1,2) => (2,2)
# (0,0) => (1,0) => (1,1) => (2,1) => (2,2)
# (0,0) => (1,0) => (2,0) => (2,1) => (2,2)

# (0,0) => (0,1) => (0,2) => (1,2) => (2,2)
# (0,0) => (0,1) => (1,1) => (1,2) => (2,2)
# (0,0) => (0,1) => (1,1) => (2,1) => (2,2)
# (0,0) => (1,0) => (1,1) => (1,2) => (2,2)
# (0,0) => (1,0) => (1,1) => (2,1) => (2,2)
# (0,0) => (1,0) => (2,0) => (2,1) => (2,2)


# (0,0) => (0,1) => (0,2) => (0,3) => (0,4) ... => (18,20) => (19,20) => (20,20)
# (0,0) => (0,1) => (0,2) => (0,3) => (0,4) ... => (19,19) => (20,19) => (20,20)

x_max = 3
y_max = 3
x_start = 0
y_start = 0
counter = 0
(0..y_max).each do |y|
  (0..x_max).each do |x|
    puts x
    counter += 1
  end
end
puts counter
