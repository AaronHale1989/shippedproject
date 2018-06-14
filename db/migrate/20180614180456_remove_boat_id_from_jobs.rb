class RemoveBoatIdFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :boat_id, :integer
  end
end
