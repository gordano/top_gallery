class OwnPostsController < ApplicationController
	before_action :find_own_posts, only: [:index ]
	before_action :find_current_post, only: [:show,:destroy]
	def index
		
	end
	def show
		@comments = Comment.where(post: @post)
	end
	def destroy
		if @post.destroy
			redirect_to root_path
		end
	end

		private
			def find_own_posts
				@post = Post.where("user_id = ?", current_user.id).all				
			end
			def find_current_post
				@post = Post.where("user_id = ? AND id =?", current_user.id, params[:id]).first
			end
end
