class Array
    
    def limited(amin,amax,array)
        if amin <= array.min && amax >= array.max
            return true
        else   
            return false
        end
    end

    def sorted(array)
        count1 = 0
        count2 = 0
        0.upto(array.length-2) { |index|
            if array[index] == array[index+1]
                count1 += 1
                count2 += 1
            elsif array[index] < array[index+1]
                count1 += 1
            elsif array[index] > array[index+1]
                count2 += 1
            end
        }

        if(count1 == array.length-1)
            return '+1'
        elsif (count2 == array.length-1)
            return '-1'
        else
            return '0'
        end
    end
end


array = [1,2,3,4,5]
array1 = [5,4,3,2,1]
array2 = [1,7,2,8,0]
puts Array.new.sorted(array)
puts Array.new.sorted(array1)
puts Array.new.sorted(array2)

puts Array.new.limited(1,5,array)
puts Array.new.limited(2,4,array)

