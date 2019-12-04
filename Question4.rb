class Sphere
    def initialize(radius)
        @radius = radius    
    end

    def area
        puts "area is: #{4*(@radius**2)*Math::PI}"
    end

    def volume
        puts "volume is: #{(4*(@radius**3)*Math::PI)/3}"
    end
end

class Ball < Sphere
    def initialize(radius,color)
        super(radius)
        @color = color
    end
end

class MyBall < Ball
    def initialize(radius,color,owner)
        super(radius,color)
        @owner=owner
    end 

    def show
        puts "radius is: #{@radius}, color is: #{@color}, owner is: #{@owner}"
    end
end

myBall = MyBall.new(4,'red','jj')
myBall.show
myBall.area
myBall.volume