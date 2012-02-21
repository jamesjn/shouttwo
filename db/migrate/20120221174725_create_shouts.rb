class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :title
      t.integer :user_id
      t.integer :views, :default => 0
      t.integer :favorites, :default => 0
      t.string :media1_type
      t.string :media1_content
      t.string :media2_type
      t.string :media2_content
      t.string :compare_type
      t.string :tags, :default => '' 

      t.timestamps
    end
  end
end
