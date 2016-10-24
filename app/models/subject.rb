class Subject < ApplicationRecord
  has_many :user_subjects
  validates :name, presence: true
  validates :initials, presence: true
  validates :credits, presence: true
end
