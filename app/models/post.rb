class Post < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	validates :autor, presence: true
end
