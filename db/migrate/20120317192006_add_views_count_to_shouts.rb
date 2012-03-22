class AddViewsCountToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :views_count, :integer, :default => 0

  end
end
