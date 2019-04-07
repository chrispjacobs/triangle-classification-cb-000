class Triangle
  def initialize(side_one, side_two, side_three)
    if (side_one + side_two) <= side_three || (side_two + side_three) <= side_one || (side_one + side_three) <= side_two
      raise TriangleError
    elsif side_one <= 0 || side_two <= 0 || side_three <=0
      raise TriangleError
    else
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
      @kind = nil
    end
  end
  def kind
    if @side_one == @side_two && @side_one != @side_three
      @kind = :isosceles
    elsif @side_one == @side_three && @side_one != @side_two
      @kind = :isosceles
    elsif @side_two == @side_three && @side_one != @side_two
      @kind = :isosceles
    elsif @side_one == @side_two && @side_two == @side_three
      @kind = :equilateral
    else
      @kind = :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "This combination of triangle sides is impossible!"
    end
  end
end

triangle = Triangle.new(0, 1, 1)
puts triangle.kind
