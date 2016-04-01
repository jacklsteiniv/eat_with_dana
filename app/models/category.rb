class Category < ActiveRecord::Base

  has_many :posts

  def to_param
  name
  end
end
