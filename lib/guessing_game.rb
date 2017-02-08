def guessing_game
  secret = rand(1..10)

  guesses = 0
  while true
    puts "Guess a number!"
    guess = Integer(gets.chomp)
    guesses += 1

    case guess <=> secret
    when -1
      puts "#{guess} is too low!"
    when 0
      puts "You found the number #{guess}!"
      break
    when 1
      puts "#{guess} is too high!"
    end
  end

  puts "It took you #{guesses} guesses"
end
