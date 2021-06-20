class Entry < ApplicationRecord
  belongs_to :incident
  validates :situation, presence: true
end
