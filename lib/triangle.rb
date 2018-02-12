#!/usr/bin/ruby

class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def is_equilateral?
    if (@side_a == @side_b) && (@side_b == @side_c)
      return TRUE
    end
    FALSE
  end
  
end
