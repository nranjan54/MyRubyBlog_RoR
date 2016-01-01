class Category < ActiveRecord::Base
	def create
		Category.create(category_params)
	end
	has_many :posts, dependent: :destroy

	private

		def category_params
			params.require(:category).permit(:name)
		end
end
