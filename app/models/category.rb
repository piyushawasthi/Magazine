class Category < ActiveRecord::Base

	validates_presence_of :name
	has_many :articles, :through => :categoriesarticles
	has_many :categoriesarticles
	
end
