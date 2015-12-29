#class Post
#	has_many :posts
#end

class Category < ActiveRecord::Base
	#attr_accessible :name
	has_many :posts
	def create
		Category.create(category_params)
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end
end
