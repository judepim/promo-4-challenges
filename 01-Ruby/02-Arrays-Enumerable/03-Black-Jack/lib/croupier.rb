require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "your score is #{player_score}, the bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21
      return "you lost"
    elsif player_score == 21
      return "black jack"
    elsif player_score > bank_score
      return "win"
    elsif player_score < bank_score
      return "you lost"
  end
end


def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  score_player = pick_player_card
  score_bank = pick_bank_score
  answer = "yes"
  while (answer == "y" || answer == "yes") && (score_player <= 21)
    puts state_of_the_game(player_score, bank_score)
    puts "Do you want a card? (y or yes otherwise no card)"
    answer = gets.chomp
  end
  puts end_game_message (score_player,score_bank)

end
