class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	def index
		@post = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new
	end

	def show
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: "Successfully updated post"
		else
			render 'edit'
		end
	end

	def destroy
		if @post.destroy
			redirect_to root_path
		end
	end


	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post, notice: "Successfully created post"
		else
			render 'new'
		end
	end

	private
		def post_params
			params.require(:post).permit(:title, :description)
		end
		def find_post
			@post = Post.find(params[:id])
		end

end
