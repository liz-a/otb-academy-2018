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
  sides = [a,b,c]
  raise TriangleError if sides.any? { |side| side <= 0} || sides.size != 3

  return :equilateral if sides.uniq.size == 1

  if sides.uniq.size == 2 
    sides.sort!
    unique_side = (sides[1] == sides[2] ? sides.shift : sides.pop)
    total_length_of_equal_sides = sides.inject(0) { |total, side| total += side }
    raise TriangleError if total_length_of_equal_sides <= unique_side
    return :isosceles
  end
  
  :scalene

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
