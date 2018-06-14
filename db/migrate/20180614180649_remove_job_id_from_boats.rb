class RemoveJobIdFromBoats < ActiveRecord::Migration[5.2]
  def change
    remove_column :boats, :job_id, :integer
  end
end
