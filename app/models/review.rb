class Review < ApplicationRecord
  belongs_to :user_subject
  validates :user_subject_id, presence: true
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
