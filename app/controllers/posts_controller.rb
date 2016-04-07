class PostsController < ApplicationController

  # before_action :authorize

  # before_action :logged_in_user, only: [:create, :destroy]

  #Lifestyle
  def index
    # @posts = Post.all.lifestyle.paginate(page: params[:page])
    if params[:category_id]
      @category = Category.find params[:category_id]
      @posts = @category.posts
    else
      @posts = Post.all
    end
  end

  #Food & Body
  def index2
    @posts = Post.all.food_and_body.paginate(page: params[:page])
  end

  #Recipes

  # Below, food_and_body ~= index

  def food
    @posts = Post.all.food_and_body.paginate(page: params[:page])
  end


  def lifestyle
    @posts = Post.all.lifestyle.paginate(page: params[:page])
  end

  def recipes
    @posts = Post.all.recipes.paginate(page: params[:page])
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


  def show
    @post = Post.find(params[:id])
  end

   def new
    @post = Post.new(params[:post])
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :title, :text, :category_id, :img_url)
  end


end
