class Article < ApplicationRecord
	has_many :comments , dependent: :destroy
	has_many :likes
	validates :title, presence: true,
						length: { minimum:5 }
	
end
