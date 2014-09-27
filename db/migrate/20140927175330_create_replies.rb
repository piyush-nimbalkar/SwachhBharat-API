class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :spotfix_id

      t.timestamps
    end
  end
end
