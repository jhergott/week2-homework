class RpsPlayController < ApplicationController
	
	def outcome
		@user = params["weapon"]
		@computer = ["rock","paper","scissors"].sample
		@win_lose_tie = who_won
	end

	def who_won
		if @user == @computer
			return "It's a tie."
		elsif @user == "rock" && @computer == "scissors"
			return "You win!"
		elsif @user == "paper" && @computer == "rock"
			return "You win!"
		elsif @user == "scissors" && @computer == "paper"
			return "You win!"
		else
			return "You lost... nice try."
		end
	end
end