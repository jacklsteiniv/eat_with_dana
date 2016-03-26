class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :category
      t.integer :user_id
      t.string :text
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
