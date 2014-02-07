# part4a
# rock paper scissors lizard spock!!
# ref Irakli student 

#defines a new exception subclass 
class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end
def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
	raise NoSuchStrategyError unless (["R", "P", "S"].include?(game[0][1]) && ["R", "P", "S"].include?(game[1][1]))
    
  	m1 = game[0][1]
  	m2 = game[1][1]
  	winner = 0

  	if m1 == "R"
    	if m2 == "P"
    		winner = 1
    	end
  	elsif m1 == "P"
    	if m2 == "S"
    		winner = 1
    	end
  	elsif m1 == "S"
    	if m2 == "R"
    		winner = 1
    	end
  	end
  	game[winner]
end

puts rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
#this will raise WrongNumberOfPlyersError
#puts rps_game_winner([ ["Armando", "P"] ])
#this will raise NoSuchStrategyError
#puts rps_game_winner([ ["Armando", "Spock"], ["Dave", "Lizard"] ])

#part4b
#ref stack overflow
def rps_tournament_winner(tournament)
    # Check if we're at a game
    if tournament[0][0].is_a? String
        return rps_game_winner(tournament)
    end
    # Otherwise keep going down the rabbit hole
    return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end

puts rps_tournament_winner([[[ ["Armando", "P"], ["Dave", "S"] ],[ ["Richard", "R"],  ["Michael", "S"] ],],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]])