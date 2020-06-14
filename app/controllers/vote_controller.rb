class VoteController < ApplicationController
  def upvote
    @vote = Vote.first
    @vote.upvote = @vote.upvote + 1
    @vote.update(vote_params)
    redirect_to root_path
  end

  def downvote
    @vote = Vote.find(1)
    @vote.downvote = @vote.downvote + 1
    @vote.update(vote_params)
    redirect_to root_path
  end

  def vote_params
    params.permit(:upvote, :downvote)
  end
end
# reset with >
# @vote = Vote.find(1);@vote.downvote = 0;@vote.upvote = 1;@vote.save;
