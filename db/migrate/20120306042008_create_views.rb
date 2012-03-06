class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.string :session_id
      t.integer :shout_id

      t.timestamps
    end
  end
end
