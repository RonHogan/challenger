class CreateChallangeWalls < ActiveRecord::Migration[5.0]
  def change
    create_table :challange_walls do |t|

      t.timestamps
    end
  end
end
