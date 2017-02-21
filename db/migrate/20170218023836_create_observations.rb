# frozen_string_literal: true

class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.integer :obs_num
      t.date :obs_on
      t.string :obs_setting
      t.string :obs_task
      t.integer :obs_time
      t.integer :aet
      t.integer :pet
      t.integer :oft_m
      t.integer :oft_v
      t.integer :oft_p
      t.string :obs_comment

      t.timestamps
    end
  end
end
