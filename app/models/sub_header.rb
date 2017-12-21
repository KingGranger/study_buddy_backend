class SubHeader < ApplicationRecord
  belongs_to :subject
  has_many :notes
end
