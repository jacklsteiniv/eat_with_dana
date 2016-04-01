class CategoriesController < ApplicationController

  # Testing: food and body 101
  def show
    @cat = Category.find_by_id(2)
    @posts = @cat.posts
  end

  def index
    @cats = Category.all
  end
end
