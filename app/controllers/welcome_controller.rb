class WelcomeController < ApplicationController
  def index
    @vote = Vote.first
    @total = @vote.upvote + @vote.downvote
    @upvote = (@vote.upvote * 3).to_f
    @accuracy = ((@upvote / (@upvote + @vote.downvote)) * 100).round(0)
  end
end
