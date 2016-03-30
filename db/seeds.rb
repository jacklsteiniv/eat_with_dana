# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Clean out current data.
User.delete_all

#Add Dana's admin account.
User.create(name:  "Dana Sutherland",
             email: "dana@dana.com",
             password: "birds",
             admin: true)

#Posts will be associated with her account.

Post.create(category: "food and body",
            user_id: 4,
            text: "Here's some text",
            title: "The first of many")
