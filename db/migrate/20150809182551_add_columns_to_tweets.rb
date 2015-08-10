class AddColumnsToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :cheer, :integer, default: 0
    add_column :tweets, :break, :integer, default: 0
  end
end
