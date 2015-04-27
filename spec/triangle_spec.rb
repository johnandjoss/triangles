require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('returns true if all the sides are equal') do
    test_triangle = Triangle.new(6,6,6)
    expect(test_triangle.equilateral?()).to(eq(true))
    end
  end
  describe('#isosceles?') do
    it('returns true if exactly 2 sides are equal') do
    test_triangle = Triangle.new(6, 6, 5)
    expect(test_triangle.isosceles?()).to(eq(true))
    end
  end
  
end
