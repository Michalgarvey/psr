$your_count = 0
$robot_count = 0
$tie_count = 0

def play_game
  robotPlays = ["paper", "scissors", "rock"]
  puts "Let's play \"Paper, Scissors, Rock!\" Best of 3 wins!"
  3.times do puts "paper, scissors, rock?"
    choice = gets.chomp
    case choice.downcase
    when "paper"
    puts robotPlays.sample
        if robotPlays.sample === "rock"
          puts "you win"
          $your_count += 1
        elsif robotPlays.sample === "scissors"
          puts "robot wins"
          $robot_count += 1
        else robotPlays.sample === "paper"
          puts "no one wins"
          $tie_count += 1
        end

    when "scissors"
      puts robotPlays.sample
        if robotPlays.sample === "rock"
          puts "robot wins"
          $robot_count += 1
        elsif robotPlays.sample === "scissors"
          puts "no one wins"
          $tie_count += 1
        else robotPlays.sample === "paper"
          puts "you win"
          $your_count += 1
        end

    when "rock"
      puts robotPlays.sample
        if rand === "rock"
          puts "no one wins"
          $tie_count += 1
        elsif robotPlays.sample === "scissors"
          puts "you win"
          $your_count += 1
        else robotPlays.sample === "paper"
          puts "robot wins"
          $robot_count += 1
        end

    else
      puts "try again, you didn't select paper, scissor or rock."
    end
end

def who_wins
  puts "you: #{$your_count}, \trobot: #{$robot_count}"
    if $your_count >=2
      puts "Congratulations, you take the match"
    elsif $robot_count >=2
      puts "robot takes the match"
    else
      puts "looks like we tied"
end

def play_again
  puts "That was fun, wanna play again (yes/no)?"
  choice = gets.chomp
  case choice.downcase
  when "yes"
    play_game
    who_wins
    play_again
  when "no"
    puts "Goodbye"
  end
end
end
end


play_game
who_wins
play_again
