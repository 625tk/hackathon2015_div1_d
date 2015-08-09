class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.integer :from_session_id
      t.integer :to_tweet_id
      t.integer :reaction_type

      t.timestamps null: false
    end
  end
end
