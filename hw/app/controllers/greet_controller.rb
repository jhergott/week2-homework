class GreetController < ApplicationController
	
	def greeting
		word = params["salutation"]
		if word.blank? 
			@greeting = "Hello"
		else
			@greeting = word
		end
	end

end