class Game
  attr_reader :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start_game
    loop do
      break unless game_loop
    end
    end_game
  end

  def game_loop
    puts "----- New Turn -----"
    puts "#{current_player.name}'s turn!"
    if current_player.answer_question
      puts "Correct! #{current_player.name} still has #{current_player.score} lives."
    else
      puts "Wrong answer! #{current_player.name} loses a life."
      current_player.decrement_life
    end
    puts "Scores: #{player1.name}: #{player1.score}, #{player2.name}: #{player2.score}"
    switch_players
    current_player.is_alive?
  end

  def end_game
    winner = player1.score > player2.score ? player1 : player2
    puts "#{winner.name} wins with a score of #{winner.score}! Game over!"
  end

  private

  attr_reader :player1, :player2

  def switch_players
    @current_player = current_player == player1 ? player2 : player1
  end
end


