
def play_game
  a = ["paper", "scissors", "rock"]
  puts "Let's play \"Paper, Scissors, Rock!\""
  puts "paper, scissors, rock?"
    choice = gets.chomp
    case choice.downcase
    when "paper"
    puts a.sample
        if a.sample === "rock"
          puts "you win"
        elsif a.sample === "scissors"
          puts "robot wins"
        else a.sample === "paper"
          puts "no one wins"
        end

    when "scissors"
      puts a.sample
        if a.sample === "rock"
          puts "robot wins"
        elsif a.sample === "scissors"
          puts "no one wins"
        else a.sample === "paper"
          puts "you win"
        end

    when "rock"
      puts a.sample
        if rand === "rock"
          puts "no one wins"
        elsif a.sample === "scissors"
          puts "you win"
        else a.sample === "paper"
          puts "robot wins"
        end

    else
      puts "try again, you didn't select paper, scissor or rock."
    end
end


def play_again
  puts "That was fun, wanna play again (yes/no)?"
  choice = gets.chomp
  case choice.downcase
  when "yes"
    play_game
    play_again
  when "no"
    puts "Goodbye"
  end
end




play_game
play_again
