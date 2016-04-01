class Post < ActiveRecord::Base

    belongs_to :user
    has_and_belongs_to_many :category
    default_scope -> { order(created_at: :desc) }

    # Below are the scopes for category 'tagging' when a post is created.
    scope :food_and_body, -> { where(category_id: 1) }
    scope :lifestyle, -> { where(category_id: 2) }
    scope :recipes, -> { where(category_id: 3) }



end

