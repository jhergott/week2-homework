class ContactSubmittedController < ApplicationController
	
	def names
		@first = params["first_name"]
		@last = params["last_name"]
	end

end