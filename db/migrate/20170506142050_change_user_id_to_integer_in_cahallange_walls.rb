class ChangeUserIdToIntegerInCahallangeWalls < ActiveRecord::Migration[5.0]
 	def up
    	change_table :challange_walls do |t|
      	t.change :user_id, :integer
    end
  end
 
  def down
    change_table :challange_walls do |t|
      t.change :user_id, :string
    end
  end
end
