require_relative "number.rb"

class Bot

    attr_accessor :number

    def initialize()
    end

    def create_number(long)
        @number = Number.new(long)
    end

    def suppose_number(long)
        suppose_number = Number.new(long)
    end

    def find_number(num)
        seeking_number = num
        suppose = 0
        long = 0
        step = 0
        arr_suppose = []

        while num > 0
            num = num / 10
            long += 1
        end

        while suppose.to_i != seeking_number

            while arr_suppose.include?(suppose.to_i)
                suppose = suppose_number(long)
            end
            
            arr_suppose.push(suppose.to_i)
        
            step += 1
            #puts "#{step}    #{suppose.to_i} "
        end

        step
    end

end
=begin
bot = DumbBot.new()

puts bot.create_number(3).to_i
puts bot.suppose_number(3).to_i

puts bot.find_number(2134)
=end