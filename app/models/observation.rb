# frozen_string_literal: true

class Observation < ApplicationRecord
  belongs_to :student
  validates :obs_num, presence: true
  validates :obs_on, presence: true
  validates :obs_setting, presence: true
  validates :obs_task, presence: true
  validates :obs_time, presence: true
  validates :aet, presence: true
  validates :pet, presence: true
  validates :oft_m, presence: true
  validates :oft_v, presence: true
  validates :oft_p, presence: true
  validates :obs_comment, presence: true
end
