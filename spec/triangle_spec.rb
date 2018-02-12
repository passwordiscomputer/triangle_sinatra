require('rspec')
require('triangle')
require('pry')

describe('triangle') do
  it("create new project") do
    triangle = Triangle.new(2, 2, 2)
    expect(triangle.is_equilateral?).to(eq(TRUE))
    end
end
