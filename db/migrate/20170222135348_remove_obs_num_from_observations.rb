class RemoveObsNumFromObservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :observations, :obs_num, :integer
  end
end
