class PostsController < ApplicationController
	def index
		@q = Post.ransack(params[:q])
		@posts = @q.result
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@category = Category.all
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, :notice => "Your post has been saved"
		else
			render "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post].permit!)
			redirect_to post_path, :notice => "Your post has been updated"
		else
			render "edit"
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path, :notice => "Your post has been deleted"
	end

	private
		def set_post
	      @post = Post.find(params[:id])
	    end

	    # Never trust parameters from the scary internet, only allow the white list through.
	    def post_params
	      params.require(:post).permit(:title, :body, :category_id)
	    end

end
