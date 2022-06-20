class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :genre_id, null: false
      t.string :maker_id, null: false
      t.string :price, null: false
      t.text :merit, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
