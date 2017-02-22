class RemoveObsOnFromObservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :observations, :obs_on, :date
  end
end
