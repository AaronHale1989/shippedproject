class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :user_id
      t.string :description
      t.string :origin
      t.integer :cost
      t.string :destination
      t.integer :job_containers

      t.timestamps
    end
  end
end
