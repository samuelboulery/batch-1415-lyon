## Demander au user un signe
## Choisir un signe pour l'ordinateur
## Les comparer
## Dire si l'utilisateur a gagné ou perdu

# SIGNS = ["rock", "paper", "scissors"]

# loop do
#   user_score = 0
#   computer_score = 0
#   loop do
#     puts "Quel est ton signe ? [#{SIGNS.join("⚡️")}]"
#     user_choice = gets.chomp

#     computer_choice = SIGNS.sample

#     if (user_choice == "rock" && computer_choice == "scissors") || (user_choice == "paper" && computer_choice == "rock") || (user_choice == "scissors" && computer_choice == "paper")
#       puts "You win"
#       user_score += 1
#     elsif user_choice == computer_choice
#       puts "Draw"
#       user_score += 1
#       computer_score += 1
#     elsif !SIGNS.include?(user_choice)
#       puts "Wrong sign"
#       next
#     else
#       puts "You loooooose"
#       computer_score += 1
#     end

#     puts "User choice #{user_choice.capitalize} : #{computer_choice.capitalize} Computer choice"
#     puts "User score #{user_score}\nComputer score #{computer_score}"

#     break if user_score == 3 || computer_score == 3

#   end
#   puts "Veux-tu rejouer ? (y/n)"
#   response = gets.chomp

#   break unless response == "y"
# end

SIGNS = ["rock", "paper", "scissors"]

loop do
  user1_score = 0
  user2_score = 0
  loop do
    puts "Joueur 1, quel est ton signe ? [#{SIGNS.join("⚡️")}]"
    user1_choice = gets.chomp

    puts "Joueur 2, quel est ton signe ? [#{SIGNS.join("⚡️")}]"
    user2_choice = gets.chomp


    if (user1_choice == "rock" && user2_choice == "scissors") || (user1_choice == "paper" && user2_choice == "rock") || (user1_choice == "scissors" && user2_choice == "paper")
      puts "Joueur 1 gagne"
      user1_score += 1
    elsif user1_choice == user2_choice
      puts "Draw"
      user1_score += 1
      user2_score += 1
    elsif !SIGNS.include?(user1_choice)
      puts "Wrong sign"
      next
    else
      puts "Joueur 2 gagne"
      user2_score += 1
    end

    puts "User1 choice #{user1_choice.capitalize} : #{user2_choice.capitalize} User2 choice"
    puts "User1 score #{user1_score}\nUser2 score #{user2_score}"

    break if user1_score == 3 || user2_score == 3

  end
  puts "Veux-tu rejouer ? (y/n)"
  response = gets.chomp

  break unless response == "y"
end
