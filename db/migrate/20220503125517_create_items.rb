class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :photo, null: false
      t.integer :price, null: false, default: 0
      t.text :description, null: false

      t.timestamps
    end
  end
end
