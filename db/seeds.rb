# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clean out current data.
# User.delete_all
# Post.delete_all

Category.destroy(1)
Category.destroy(2)
Category.destroy(3)
#Add Dana's admin account.
# User.create(name:  "Dana Sutherland",
             email: "dana@dana.com",
             password: "birds",
             admin: true)
#
#Posts will be associated with her account.

# Create your 3 categories below - id of 4,5,6 for food&body, lifestyle, and recipes.
#You'll link posts to each category id in order to display them on separate pages.

# Category.create(name: "Food & Body")
# Category.create(name: "Lifestyle")
# Category.create(name: "Recipes")


# # Post.create(category_id: 4,
#             user_id: 5,
#             text: "And is great for you!",
#             title: "Quinoa is great",
#             img_url: "http://p-fst2.pixstatic.com/54d00daa697ab00c2502b1dc/_w.540_s.fit_/2015-02-02-Quinoa-1.jpg")

Post.create(category_id: 6,
            user_id: 5,
            text: "Measurements:",
            title: "Great smoothie recipe",
            img_url: "http://ghk.h-cdn.co/assets/cm/15/11/54fe1823cc94c-jump-start-smoothies-recipe-ghk0911-xl.jpg")

Post.create(category_id: 5,
            user_id: 5,
            text: "Lifestyle text here",
            title: "Here's a lifestyle post!",
            img_url: "http://lifestylehealthbenefits.com/sites/default/files/WomanRunningRiver.jpg")
