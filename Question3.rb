class Triangle
    def initialize(sideA,sideB,sideC)
        @sides = [sideA,sideB,sideC]
        @isTriangle = false
    end

    def perimeter
        test
        if @isTriangle
            return @sides[0] + @sides[1] + @sides[2]
        end
        return 'not a triangle'
    end

    def area
        test
        if @isTriangle
            s = (@sides[0]+@sides[1]+@sides[2])/2
            area = Math.sqrt(s*(s-@sides[0])*(s-@sides[1])*(s-@sides[2]))
            return area
        end
        return 'not a triangle'
    end
    
    def test
        @sides.combination(2).each do |combination|
            array = @sides.sort
            lastSide = @sides.clone
            combination.each {|item| lastSide.delete(item)}
            if !lastSide.empty? && combination.inject(:+) <= lastSide.first
                return "Cannot create a triangle"
            elsif @sides.uniq.count == 1
                @isTriangle = true
                return 'equilateral triangle'
            elsif @sides.uniq.count == 2
                @isTriangle = true
                return 'isosceles triangle'
            elsif ((array[0]**2 + array[1]**2) == @sides.max**2)
                @isTriangle = true
                return 'right triangle'
            else
                @isTriangle = true
                return 'scalene triangle'
            end

        end
    end
end

triangle = Triangle.new(5,5,7)
triangle1 = Triangle.new(5,6,7)
triangle2 = Triangle.new(3,4,5)
triangle3 = Triangle.new(0,2,4)
puts triangle.perimeter
puts triangle.area
puts triangle.test
puts '-------------------------'
puts triangle1.perimeter
puts triangle1.area
puts triangle1.test
puts '-------------------------'
puts triangle2.perimeter
puts triangle2.area
puts triangle2.test
puts '-------------------------'
puts triangle3.perimeter
puts triangle3.area
puts triangle3.test