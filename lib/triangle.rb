# class Triangle
#   attr_reader :side1, :side2, :side3, :scalene, :equilateral
# def initialize(side1,side2,side3)
#   @side1 = side1
#   @side2 = side2
#   @side3 = side3
# end

# def kind 
#   if (side1 > 0 && side2 >0 && side3 > 0) && ((side1 + side2)>= side3 || (side2 + side3)>=side1 || (side3 + side1) >= side2) 
#     if side1 == side2 && side2 == side3
#       :equilateral
#       elsif 
#         side1 == side2 || side1 == side3 || side2 == side3
#         :isosceles
#       else
#         :scalene
#         end 
#     else
#       raise TriangleError
#     end
# end
# class TriangleError < StandardError
#   def message
#     "Not a valid triangle"
#   end
# end

# end
# tria = Triangle.new
# puts tria.kind(0,7,7)
class Triangle
  class TriangleError < StandardError
  end
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    validate_triangle
  end

  def kind
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError, "Invalid triangle: All sides must be greater than 0"
    elsif @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError, "Invalid triangle: The sum of the lengths of any two sides must exceed the length of the third side"
    end
  end
end


