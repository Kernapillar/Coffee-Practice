class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name, null: false
      t.integer :year
      t.float :caffine_content
      t.float :caffine_percentage

      t.timestamps
    end
  end
end
