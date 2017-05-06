class InsertChallangeWallsTableValues < ActiveRecord::Migration[5.0]
  def change
    add_column :challange_walls, :user_id, :string
    add_column :challange_walls, :title, :string
    add_index :challange_walls, :challange_wall_id  
  end
end
