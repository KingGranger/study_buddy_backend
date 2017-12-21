class Subject < ApplicationRecord
  has_many :sub_headers
  has_many :user_subjects
  has_many :users, through: :user_subjects
end
