class CommentsController < ApplicationController
	before_action :find_comment, only: [:show, :update, :destroy]
	before_action :authenticate_user!
	def create
		@post = Post.find(params[:post_id])
		#@comment = Comment.create(params[:comment].permit(:content))
		@comment = @post.comments.create params[:comment].permit(:content)
		@comment.user_id = current_user.id
		#@comment.post_id = @post.id		
		if @comment.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end
	def destroy
		@post = Post.find(params[:post_id])
		@comment = Comment.find(params[:id])
		if @comment.destroy
			redirect_to post_path(@post)
		end
	end
	
	def show
	end

	private				
				def find_comment
					#@comment = Comment.where(post: @post)
				end
end
