require_relative "num_master.rb"

game = Num_mastermind.new()
command = ""

puts "Hello to the mastermind game"

while command != "stop"
    puts "Select type of game"
    puts "Type /solo/ for finding number"
    puts "Type /bot/ to see how he will find number"
    puts "Type /stop/ to finish it"
    command = gets.chomp
    case command
    when "solo"
        game.session()
    when "bot"
        game.bot_playing()
    end
end

puts "See you!!!"