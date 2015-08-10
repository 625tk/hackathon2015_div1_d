class ChangeDatatypeSessionIdOfReactions < ActiveRecord::Migration
  def change
    change_column :reactions, :from_session_id, :string
  end
end
