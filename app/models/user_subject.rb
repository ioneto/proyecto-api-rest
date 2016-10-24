class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :reviews
  validates :user_id, presence: true
  validates :subject_id, presence: true
  validates :semester, presence: true
end
