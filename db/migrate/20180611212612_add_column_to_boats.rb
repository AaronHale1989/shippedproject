class AddColumnToBoats < ActiveRecord::Migration[5.2]
  def change
    change_table :jobs do |t|
     t.integer :boat_id
   end
  end
end
