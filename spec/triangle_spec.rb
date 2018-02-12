require('rspec')
require('triangle')
require('pry')

describe('triangle') do
  it("checks for equilateral") do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.is_equilateral?).to(eq(true))
  end
  it("checks for isosceles") do
    triangle = Triangle.new(2, 3, 3)
    expect(triangle.is_isosceles?).to(eq(true))
  end
  it("checks if it's a triangle") do
    triangle = Triangle.new(2, 3, 3)
    expect(triangle.is_triangle?).to(eq(true))
  end
  it("checks if it is scalene") do
    triangle = Triangle.new(8, 3, 10)
    expect(triangle.is_scalene?).to(eq(true))
  end
  it("checks for all conditions") do
    triangle = Triangle.new(2, 3, 3)
    expect(triangle.check_triangle).to(eq("Isosceles"))
  end
end
