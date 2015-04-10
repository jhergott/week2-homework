class DiceController < ApplicationController
	
	def start

	end

	def roll
		@die_1 = [1,2,3,4,5,6].sample
		@die_2 = [1,2,3,4,5,6].sample
		@total = @die_1 + @die_2
		@open_roll = roll_outcome
	end

	def roll_outcome
		if @total == 7 || @total == 11
			@game_over = true
			return "You rolled a #{@total}. You win!"
		elsif @total == 2 || @total == 3 || @total == 12
			@game_over = true
			return "You rolled a #{@total}. You lose..."
		else
			@game_over = false
			@point = @total
			return "The point is #{@point}"
		end
	end

	def mid_roll
		@point_mid = params["point"].to_i
		@die_mid_1 = [1,2,3,4,5,6].sample
		@die_mid_2 = [1,2,3,4,5,6].sample
		@total_mid = @die_mid_1 + @die_mid_2
		@mid_roll_outcome = rolling_outcome
	end

	def rolling_outcome
		if @total_mid == @point_mid
			@game_over = true
			return "You hit the point! Nice win!"
		elsif @total_mid == 7
			@game_over = true
			return "You rolled a 7. You lose..."
		else
			@game_over = false
			return "You rolled a #{@total_mid}"			
		end
	end

end