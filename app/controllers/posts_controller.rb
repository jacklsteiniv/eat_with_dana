class PostsController < ApplicationController

  # before_action :authorize

  # before_action :logged_in_user, only: [:create, :destroy]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def show
    @post = Post.find(params[:id])
  end

  # Below, food_and_body ~= index

  def food
    @posts = Post.paginate(page: params[:page])
  end




  def create
    @post = Post.new(post_params)
      if @post.save
        redirect_to root_path
        flash[:success] = "You added review #{@post.id}!"
      else
        render :new
        flash[:danger] = 'Sorry, we could not add your review.'
      end
  end


  def lifestyle
  end

  def recipes
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :text, :category)
  end


end
