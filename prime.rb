def prime?(x)
    if x <= 1
        return false
    end
    
    remainder_array = []
    
    range_to_test = *(2..x-1) # excludes the 0 remainders from dividing by 1 and by the number itself, x. Thus, any 0's in the remainder_array will signify a non-prime.
    
    range_to_test.each { |y| remainder_array.unshift(x%y)   }
    
    
    if remainder_array.include?(0) == true
        return false
        else
        return true
    end
    
end

