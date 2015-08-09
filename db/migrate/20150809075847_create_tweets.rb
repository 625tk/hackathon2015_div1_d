class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :session_id
      t.integer :tweet_id
      t.integer :reply_to_id
      t.text :text

      t.timestamps null: false
    end
  end
end
