# frozen_string_literal: true

class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.date :obs_on
      t.string :obs_setting
      t.string :obs_task
      t.integer :obs_time

      t.timestamps
    end
  end
end
