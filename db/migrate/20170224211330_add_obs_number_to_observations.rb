# frozen_string_literal: true

class AddObsNumberToObservations < ActiveRecord::Migration[5.0]
  def change
    add_column :observations, :obs_num, :integer
  end
end
