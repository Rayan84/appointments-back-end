class AddUserRefToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_reference :favorites, :user, foreign_key: { to_table: :users}
    add_reference :favorites, :item, foreign_key: { to_table: :items}
  end
end
