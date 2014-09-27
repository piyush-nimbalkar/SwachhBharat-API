class CreateSpotfixes < ActiveRecord::Migration
  def change
    create_table :spotfixes do |t|
      t.integer :owner_id
      t.string :title
      t.text :description
      t.integer :estimated_hours
      t.integer :estimated_people
      t.string :status
      t.float :latitude
      t.float :longitude
      t.timestamp :fix_date

      t.timestamps
    end

    add_index :spotfixes, :owner_id
  end
end
