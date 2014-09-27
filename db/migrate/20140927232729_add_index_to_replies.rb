class AddIndexToReplies < ActiveRecord::Migration
  def change
    add_index :replies, [:user_id, :spotfix_id], unique: true
  end
end
