# frozen_string_literal: true

class Setting < ApplicationRecord
  belongs_to :user
  belongs_to :student, inverse_of: :settings
  has_many :observations, dependent: :destroy
  validates :obs_on, :obs_setting, :obs_task,
            :obs_time, presence: true
end
