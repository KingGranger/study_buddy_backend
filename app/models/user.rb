class User < ApplicationRecord
  has_many :notes
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
  # has_secure_password
end
