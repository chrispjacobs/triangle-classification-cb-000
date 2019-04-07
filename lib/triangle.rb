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
      
end
