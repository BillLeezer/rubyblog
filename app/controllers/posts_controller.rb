class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "Hello Bill, Your article was succesfully saved!"
		else
			render 'new', notice: "Oh no, Bill! I was unable to save your post."
		end
	end


	private

	def post_params
		params.require(:post).permit(:title, :content)
	end
end
