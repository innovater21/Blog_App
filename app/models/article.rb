class Article < ApplicationRecord
	has_many :comments , dependent: :destroy
	
	validates :title, presence: true,
						length: { minimum:5 }



	def self.query(id)
		a = Article.find(id)
		b=a.title
	end
	
end
