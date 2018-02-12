require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')
require('./lib/triangle')

get('/') do
  @description = "Triangle"
  erb(:input)
end

get('/output')do
  @side_a = params["side_a"].to_i
  @side_b = params["side_b"].to_i
  @side_c = params["side_c"].to_i
  @triangle = Triangle.new(@side_a, @side_b, @side_c)
  @triangle_output = @triangle.check_triangle
  # @visual_a = @triangle.visual_side(@side_a)
  # @visual_b = @triangle.visual_side(@side_b)
  # @visual_c = @triangle.visual_side(@side_c)
  erb(:output)
end
