class AddUserIdToTweetClones < ActiveRecord::Migration[7.0]
  def change
    add_column :tweet_clones, :user_id, :integer
  end
end
