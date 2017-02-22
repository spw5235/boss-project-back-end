# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :students
  has_many :settings
  has_many :observations
end
