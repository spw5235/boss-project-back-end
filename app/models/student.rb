# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :user
  has_many :observations, inverse_of: :student, dependent: :destroy
  validates :first_name, :last_name, :born_on,
            :school, :teacher, :grade, presence: true
  # validates_presence_of :first_name, :last_name, :born_on,
  #                       :school, :teacher, :grade

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :born_on, presence: true
  # validates :school, presence: true
  # validates :teacher, presence: true
  # validates :grade, presence: true
end
