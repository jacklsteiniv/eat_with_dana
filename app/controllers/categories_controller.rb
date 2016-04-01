class CategoriesController < ApplicationController
  def show
    @cat = Category.find(params[:id])
    @posts = @cat.posts
  end

  def index
    @cats = Category.all
  end
end
