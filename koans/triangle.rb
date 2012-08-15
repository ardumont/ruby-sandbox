# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # simple checks about negative or zero values
  [a, b, c].map { |c| if c <= 0
                   raise TriangleError.new("Side of a triangle cannot be zero or negative!")
                 end
  }
  if a+b<=c || a+c<=b || b+c<=a
    raise TriangleError.new("The sum of 2 sides must be superior or equal to the third side!")
  end

  # the passing case
  if a == b && b == c
    return :equilateral
  elsif a == b || a == c || b == c
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
