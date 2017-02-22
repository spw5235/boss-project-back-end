class RemoveObsTaskFromObservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :observations, :obs_task, :string
  end
end
