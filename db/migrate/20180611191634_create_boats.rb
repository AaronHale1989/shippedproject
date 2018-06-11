class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :location
      t.integer :user_id
      t.integer :boat_containers
      t.integer :job_id

      t.timestamps
    end
  end
end
