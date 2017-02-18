# frozen_string_literal: true

class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :born_on, presence: true
  validates :school, presence: true
  validates :teacher, presence: true
  validates :grade, presence: true
end
