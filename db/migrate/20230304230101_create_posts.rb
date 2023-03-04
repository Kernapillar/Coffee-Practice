class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.integer :coffee_id, null: false
      t.text :text
      t.float :rating

      t.timestamps
    end
  end
end
