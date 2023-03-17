class Triangle
    attr_reader :a, :b, :c 
    def initialize
          @a = a
          @b = b 
          @c = c
    end
   

class TriangleError < StandardError
end

def kind(a, b, c)
  sides = [a,b,c].sort

  raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  return :equilateral if sides.uniq.length  == 1
  return :isosceles if sides.uniq.length  == 2
  :scalene
end


  
  end
  # tria = Triangle.new
  # puts tria.kind(0,7,7)
  