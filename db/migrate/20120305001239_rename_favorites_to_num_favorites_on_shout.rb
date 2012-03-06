class RenameFavoritesToNumFavoritesOnShout < ActiveRecord::Migration
  def up
    rename_column :shouts, :favorites, :num_favorites
  end

  def down
  end
end
