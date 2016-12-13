# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html

admin = User.create!(name: "admin_user", email: 'admin@gmail.com', password: 'admin@123', password_confirmation: 'admin@123')
admin.confirm!
admin.add_role :admin
puts "admin user created"
user1 = User.create!(name: "user1", email: 'user1@gmail.com', password: 'user1@123', password_confirmation: 'user1@123')
user1.confirm!
puts "User 1 Created "
user2 = User.create!(name: "user2", email: 'user2@gmail.com', password: 'user2@123', password_confirmation: 'user2@123')
user2.confirm!
puts "User 2 Created"

c1 = Category.create! name: "Technology"
c2 = Category.create! name: "Social"
c3 =Category.create! name: "Writing"

puts "Categories Created..."

article1 = Article.create!(title: "Getting Started with Rails", body: "Rails is a web application development framework written in the Ruby language. It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It allows you to write less code while accomplishing more than many other languages and frameworks. Experienced Rails developers also report that it makes web application development more fun.<br /><br />Rails is opinionated software. It makes the assumption that there is a best way to do things, and it's designed to encourage that way - and in some cases to discourage alternatives. If you learn The Rails Way you'll probably discover a tremendous increase in productivity. If you persist in bringing old habits from other languages to your Rails development, and trying to use patterns you learned elsewhere, you may have a less happy experience.", publish_date: DateTime.now.to_date.to_s, user_id: user1.id)
Categoriesarticle.create!(category_id: c1.id, article_id: article1.id)
puts "Article 1 Created..."

article2 = Article.create!(title: "A victory for the people, a victory for India and the triumph of the ballot", body: "<b>I would like to express my gratitude to the Election Commission for conducting this mammoth exercise.</b> I thank and salute all those countless election staff, security personnel and police personnel without whom no Election is possible.<br/><br/>It is unfortunate that we witnessed some untoward incidents during the poll process during which some lives were lost. I salute all those who wereunfortunately martyred and offer my deepest condolences to their families. These brave individuals lived and died for democracy. It is our duty to ensure that their sacrifices do not go in vain.", publish_date: DateTime.now.to_date.to_s, user_id: user2.id)
Categoriesarticle.create!(category_id: c2.id, article_id: article2.id)
puts "Article 2 Created..."
 
 

comment1 = Comment.create!(comment: "This is awesome article", article_id: article1.id, user_id: admin.id, comment_date: DateTime.now.to_date.to_s)
comment1.article.update(read_count: comment1.article.read_count + 1)
puts "Comment 1 Created..."

comment2 = Comment.create!(comment: "This is nice article for ruby on rails", article_id: article1.id, user_id: user2.id, comment_date: DateTime.now.to_date.to_s)
comment2.article.update(read_count: comment2.article.read_count + 1)
puts "Comment 2 Created..."