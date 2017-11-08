require_relative "player.rb"
require_relative "number.rb"
require_relative "dumb_bot.rb"

class Num_mastermind
    
    attr_accessor :player, :number, :cows, :bulls

    def initialize()
        print "Pls enter your name:"
        @player = Player.new()
        @player.name = gets.chomp
    end

    def session()
        print "How long number should be?(1..10)"
        long = gets.chomp.to_i
        @number = Number.new(long)
        count = 0
        
        while @cows != long && count < 3*long
            @cows = 0
            @bulls = 0
            print "Enter your suppose: "
            step = gets.chomp.to_i

            if step == @number
                @cows = long
            else
                find_cows_bulls(step)
            end

            print "#{player.name} finds: #{cows} cows and #{bulls} bulls \n"
        end

        if @cows == long
            puts "Grats You win!!!"
        else
            puts "Better luck next time!"
        end

    end

    def bot_playing()
        print "Enter the number pls(1..(10**10)-1:"
        number = gets.chomp.to_i
        bot = Bot.new()

        puts "bot find your number just for #{bot.find_number(number)} steps"
    end
       

    def find_cows_bulls(step)
        quest_arr = @number.arr_creator(@number.to_i)
        supose_arr = @number.arr_creator(step)
        i = 0

        quest_arr.each{|num| 
        if num == supose_arr[i]
            @cows += 1
            supose_arr.delete_at(i)
        else
            i +=1
        end}

        supose_arr.each do|elem|

        if quest_arr.include?(elem)
            @bulls += 1
        end
        end
    end


end

