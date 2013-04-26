def rollDice
	myDice = [1, 2, 3, 4, 5, 6]
	myRoll = myDice.sample
	puts "You rolled " + myRoll.to_s
	return myRoll
end

def playGame (score)
	myCurrentRoll = rollDice
	myCurrentScore = score

	if myCurrentRoll == 1 then
		puts "Game Over!"
		puts myCurrentScore
		return myCurrentScore
	else
		if myCurrentRoll % 2 == 0
			puts "you gained " + myCurrentRoll.to_s + " points"
			myCurrentScore = myCurrentScore + myCurrentRoll
		else
			puts "you lose " + myCurrentRoll.to_s + " points"
			myCurrentScore = myCurrentScore - myCurrentRoll
		end
		playGame (myCurrentScore)
	end
end

def scoreGame(myCurrentScore)
	if myCurrentScore > 0 then
		puts "you won!"
	else
		puts "you lost"
	end
end

scoreGame(playGame (0))
