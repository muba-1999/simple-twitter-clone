class CreateTweetClones < ActiveRecord::Migration[7.0]
  def change
    create_table :tweet_clones do |t|
      t.text :tweet_clone

      t.timestamps
    end
  end
end
