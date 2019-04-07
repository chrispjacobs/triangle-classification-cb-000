class Triangle
  def initialize(side_one, side_two, side_three)
    if (side_one + side_two) <= side_three || (side_two + side_three) <= side_one || (side_one + side_three) <= side_two
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      @side_one = side_one
      @side_two = side_two
      @side_three = side_three
      @kind = nil
    end
  end
  def special_triangle_check
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
end
