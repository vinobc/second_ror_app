class CreateShortposts < ActiveRecord::Migration
  def change
    create_table :shortposts do |t|
      t.string :spost
      t.integer :usr_id

      t.timestamps
    end
  end
end
