class RemoveObsTimeFromObservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :observations, :obs_time, :integer
  end
end
