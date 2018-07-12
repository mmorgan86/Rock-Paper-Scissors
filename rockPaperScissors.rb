# Write a Rock, Paper, Scissors game where a user can play against the computer.
#
# The user should enter rock, paper, or scissors (remember to account for
# differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

# selections
SELECTION = %w(rock paper scissors)
user_score = 0
computer_score = 0
# or you could of did it this way
# selections = ["rock", "paper", "scissors"]

puts "Welecome to Rock Paper Scissors"

until user_choice >= 5 || computer_choice >= 5
  puts "What do you throw? (Rock, Paper or Scissors)"
  user_choice = gets.chomp.downcase

  computer_choice = SELECTION.sample


  puts "User throw #{user_choice}; computer throw #{computer_choice}"
  if user_choice == computer_choice
    puts "TIE!"
  elsif   ((user_choice == 'rock' && computer_choice == 'scissors') ||
          (user_choice == 'paper' && computer_choice == 'rock') ||
          (user_choice == 'scissors' && computer_choice == 'paper'))
    puts "YOU WIN! #{user_choice} beats #{computer_choice}"
        user_score += 1
  else
    puts "COMPUTER WINS #{computer_choice} beats #{user_choice}"
    computer_score += 1
  end
    puts "Your Score: #{user_score}, Computer Score: #{computer_score}"
end
