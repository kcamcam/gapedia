class WelcomeController < ApplicationController
	def index
		@vote = Vote.find(1)
		@total = @vote.upvote+@vote.downvote
		@accuracy = ((@vote.upvote.to_f/(@total))*100).round(0)
	end
end
