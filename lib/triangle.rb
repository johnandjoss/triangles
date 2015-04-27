class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:equilateral?) do
    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      true
    else
      false
    end
  end
  define_method(:isosceles?) do
    if @side1 == @side2
      if @side1 != @side3 && @side2 != @side3
      true
      else
      false
    end
  elsif  @side2 == @side3
      if @side2 != @side1 && @side3 != @side1
      true
      else
      false
      end
    elsif @side3 == @side1
      if @side3 != @side2 && @side1 != @side2
      true
      else
      false
      end
    else
      false
    end
  end
  define_method(:scalene?) do
    if @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      true
    else
      false
    end
  end
  define_method(:not_triangle?) do
    if @side1.to_i >= @side2.to_i.+(@side3.to_i)
      true
    elsif @side2.to_i >= @side3.to_i.+(@side1.to_i)
      true
  elsif @side3.to_i >= @side1.to_i.+(@side2.to_i)
      true
    else
      false
    end
  end
end
