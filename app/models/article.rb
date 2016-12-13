class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :publish_date
	belongs_to :user
	has_many :categories, :through => :categoriesarticles
	has_many :categoriesarticles
	has_many :comments

	scope :desc, -> { order(created_at: :desc)}
	scope :popular, -> { order(read_count: :desc)}



	def self.search(search)
	  if search
	    find(:all, :conditions => ['title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
