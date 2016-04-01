class Category < ActiveRecord::Base

  has_many :posts

  def to_param
    id
  end
end
