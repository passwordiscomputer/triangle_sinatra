#!/usr/bin/ruby

class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  def isosceles_visual()
    if (@side_a == @side_b)
      @equal_side = @side_a
      @nonequal_side = @side_c
    elsif (@side_b == @side_c)
      @equal_side = @side_c
      @nonequal_side = @side_a
    elsif (@side_a == @side_c)
      @equal_side = @side_a
      @nonequal_side = @side_b
    end
  end
  def is_equilateral?
    if (@side_a == @side_b) && (@side_b == @side_c)
      return true
    end
    false
  end

  def is_isosceles?
    if (@side_a == @side_b) || (@side_b == @side_c) || (@side_c == @side_a)
      return true
    end
    false
  end

  def is_triangle?
    if (@side_a + @side_b <= @side_c) || (@side_b + @side_c <= @side_a) || (@side_a + @side_c <= @side_b)
      return false
    end
    true
  end

  def is_scalene?
    if (@side_a != @side_b) && (@side_b != @side_c)
      return true
    end
    false
  end

  def check_triangle
    if is_triangle? == true
      if is_equilateral? == true
        return "Equilateral"
      elsif is_isosceles? == true
        return "Isosceles"
      elsif is_scalene? == true
        return "Scalene"
      end
    else
      return "Not a triangle"
    end
  end

  def visual_side(side)
    if side < 8
      return side * 100
    elsif side < 50
      return side * 10
    else
      return side
    end
  end

  def visual_triangle
    @check_triangle = check_triangle
    if check_triangle == "Equilateral"
      return "width: 100px;
        height: 100px;
        border-style: solid;
        border-width: 0 #{visual_side(@side_a)/2}px #{(visual_side(@side_a)/2)*1.73}px #{visual_side(@side_a)/2}px;
        border-color: transparent transparent #007bff transparent;"
    end
    if (check_triangle == "Scalene")
      return "width: 100px;
        height: 100px;
        border-style: solid;
        border-width: 0 #{visual_side(@side_a)}px #{visual_side(@side_b)}px #{visual_side(@side_c)}px;
        border-color: transparent transparent #007bff transparent;"
    end
    if (check_triangle == "Isosceles")
      isosceles_visual
      return "width: 100px;
        height: 100px;
        border-style: solid;
        border-width: 0 #{visual_side(@equal_side/2)}px #{visual_side(@nonequal_side)}px #{visual_side(@equal_side/2)}px;
        border-color: transparent transparent #007bff transparent;"
    end
  end
end
