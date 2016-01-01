class Post < ActiveRecord::Base
	#attr_accessible :title, :body, :category_id, :author_id
	def create
		Post.create(post_params)
	end
	belongs_to :category

	private

		def post_params
			params.require(:post).permit(:title, :body, :category_id, :author_id)
		end
end
