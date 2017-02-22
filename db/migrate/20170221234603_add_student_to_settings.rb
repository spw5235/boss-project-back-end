class AddStudentToSettings < ActiveRecord::Migration[5.0]
  def change
    add_reference :settings, :student, foreign_key: true, index: true, null: false
  end
end
