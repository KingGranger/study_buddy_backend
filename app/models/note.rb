class Note < ApplicationRecord
  belongs_to :user
  belongs_to :sub_header
  belongs_to :type
end
