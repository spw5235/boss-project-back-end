class RemoveObsSettingFromObservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :observations, :obs_setting, :string
  end
end
