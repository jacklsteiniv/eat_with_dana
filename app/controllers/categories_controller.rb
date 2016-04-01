class CategoriesController < ApplicationController

   def show
    @cat = Category.find_by_id(2)
    # 2 is hard coded in.
    @posts = @cat.posts
  end
  #These 3 methods all use the index controller. Define routes
  def food
    @cat = Category.find_by_id(1)
    @posts = @cat.posts
  end

  def lifestyle
    @cat = Category.find_by_id(2)
    @posts = @cat.posts
  end

  def recipes
    @cat = Category.find_by_id(3)
    @posts = @cat.posts
  end



  #standard index

  def index
    @cats = Category.all
  end
end
