class PostsController < ApplicationController

  # before_action :authorize

  # before_action :logged_in_user, only: [:create, :destroy]

  def new
    @post = Post.new
  end

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def food_and_body
  end

  def lifestyle
  end

  def recipes
  end


end
