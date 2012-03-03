class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless game.select {|x| x[1] =~ /[RSP]/ }.size == 2
  
  return game[0] if game[0][1] == game[1][1]
  return game[0] if game[0][1] == "R" && game[1][1] == "S"
  return game[0] if game[0][1] == "P" && game[1][1] == "R"
  return game[0] if game[0][1] == "S" && game[1][1] == "P"
  return game[1]
end

def rps_tournament_winner(tournament)
  return rps_game_winner(tournament) if tournament.first.first.class == String
  
  return rps_game_winner([rps_tournament_winner(tournament.first), rps_tournament_winner(tournament.last)])
end