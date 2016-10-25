class User < ApplicationRecord
  has_many :user_subjects
  has_many :subjects, :through => :user_subjects
  validates :username, presence: true
  validates :password, presence: true
  validates :full_name, presence: true
  validates :email, presence: true
  validates :rol, presence: true
end
