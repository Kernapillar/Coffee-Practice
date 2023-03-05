class UpdatePostForeignId < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :coffee_id, :drink_id
  end
end
