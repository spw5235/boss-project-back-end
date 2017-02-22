class AddSettingToObservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :observations, :setting, foreign_key: true, index: true, null: false
  end
end
