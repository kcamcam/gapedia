class AddUpvotesDownvotesToVote < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :upvote, :integer
    add_column :votes, :downvote, :integer
  end
end
