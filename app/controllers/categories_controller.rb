class CategoriesController < ApplicationController


  #These 3 methods all use the index controller. Define routes
  def food
    @cat = Category.find_by_id(5)
    @posts = @cat.posts
  end

  def lifestyle
    @cat = Category.find_by_id(6)
    @posts = @cat.posts
  end

  def recipes
    @cat = Category.find_by_id(7)
    @posts = @cat.posts
  end



  #standard index

  def index
    @cats = Category.all
  end
end
