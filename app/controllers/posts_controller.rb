class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]
  



  def index
    @post = Post.where(state: "approved").order("created_at DESC")    
    #@post = Post.all.order("created_at DESC")
    #@post = Post.where(title: params[:keyword])
    #@post = Post.search_post(params[:keyword]).order("created_at DESC")
    
    if params[:keyword].present?
      @post = @post.search_post(params[:keyword]).order("created_at DESC")
      
    end    
  end

  def new
    @post = current_user.posts.build
  end

  def show
    if @post
      @comments = Comment.where(post: @post)
    else
      redirect_to action: "index"
    end
  end

  def update
    @post.moderate!
    if @post.update(post_params)
      redirect_to @post, notice: "Successfully updated post. You post on Moderating!"
    else
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    end
  end

  def upvote
    @post.upvote_by current_user
    redirect_to :back
  end


  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: "Successfully created post"
    else
      render 'new'
    end
  end

  def my_own    
    @post = Post.where("user_id = ?", current_user.id).all
  end

  private
    def post_params      
      params.require(:post).permit(:title, :description, :image)
    end
    def find_post
      @post = Post.where(id: params[:id]).where("state = ?",'approved').first
      #@post = post if post.state == 'approved'       
    end
end