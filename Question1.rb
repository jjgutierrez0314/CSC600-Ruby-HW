puts '----------------------------'
puts 'loop'
a = 0
loop do
    a += 1
    print a, ' '
    if a == 10
        break
    end
end

puts
puts '----------------------------'
puts 'while'

b = 1
while b < 200 do
    print b, ' '
    b *= 2
end

puts
puts '----------------------------'
puts 'until'

c = 1
until c > 5 do
    print "|| Hello World "
    c += 1
end

puts
puts '----------------------------'
puts 'for'

array = [1,2,3,4,5]
for i in array
    i += i
    print i, ' '
end

puts
puts '----------------------------'
puts 'upto'

array1 = [12,23,34,45,56,67]
sum = 0
d = 0
d.upto(array1.length - 1) {
    sum += array1[d]
    d += 1
}
print sum

puts
puts '----------------------------'
puts 'downto'

e = 10
e.downto(0) { |e|
    print e, ' '
}

puts
puts '----------------------------'
puts 'times'

i = 1
5.times {
    i *= 10
    print i, ' '
}

puts
puts '----------------------------'
puts 'each'

hash = {:a => 1, :b => 2, :c => 3}
hash.each do |key, value|
    print key, ' => ', value, ' '
end

puts
puts '----------------------------'
puts 'map'

{:one => 1, :two => 2, :three => 3}.map {|key, value|
    print key, ' => ', value, ' '
}

puts
puts '----------------------------'
puts 'step'

sum1 = 0
0.step(10, 0.5) { |x|
    sum1 += x
    print sum1, ' '
}

puts
puts '----------------------------'
puts 'collect'

squares = [1,2,3,4,5].collect { |index|
    index**2
}
print squares

puts
puts '----------------------------'
puts 'select'

evens = (1 .. 20).select{|x| 
    x % 2 == 0
}
print evens

puts
puts '----------------------------'
puts 'reject'

odds = (1 .. 20).reject{ |index|
    index % 2 == 0
}
print odds

