$your_count = 0
$robot_count = 0

def play_game
  puts "Let's play \"Paper, Scissors, Rock!\" Best of 3 wins!"
  3.times do puts "paper, scissors, rock?"
    choice = gets.chomp
    case choice.downcase
    when "paper"
      puts rand(2)
        if rand === 0
          puts "rock"
          puts "you win"
          $your_count += 1
        elsif rand === 1
          puts "scissors"
          puts "robot wins"
          $robot_count += 1
        else rand === 2
          puts "paper"
          puts "no one wins"
        end

    when "scissors"
      puts rand(2)
        if rand === 0
          puts "rock"
          puts "robot wins"
          $robot_count += 1
        elsif rand === 1
          puts "scissors"
          puts "no one wins"
        else rand === 2
          puts "paper"
          puts "you win"
          $your_count += 1
        end

    when "rock"
      puts rand(2)
        if rand === 0
          puts "rock"
          puts "no one wins"
        elsif rand === 1
          puts "scissors"
          puts "you win"
          $your_count += 1
        else rand === 2
          puts "paper"
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
