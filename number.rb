class Number
    attr_accessor :number, :filler

    def initialize(size)
       number_generator(size)
       @number = @filler 
    end

    def number_generator(long)
        arr = []
        min = 10 ** (long-1)
        max = (10 ** long) - 1

        while arr.size < long
            @filler = rand(min..max)
            arr = arr_creator(filler)
            arr.uniq!()
            #puts "#{arr} #{arr.size}   #{@filler}"
        end
    end

    def arr_creator(num)
        array = Array.new()
        divider = 10
        while num > 0
            array.push(num%10)
            num /= 10
        end
        return array.reverse!
    end

    def to_i()
        @number
    end

end
=begin
number = Number.new()
puts number.number
puts number.arr_creator(number.number)


number = Number.new()
puts number.number.to_i


number  =Number.new(2)
puts number.number.to_i
=end