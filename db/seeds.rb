# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
 ["user@test.com", "password"],
]

names = ["Jon Bergman"]

users.each do |email, password|
	user = User.new
	user.email = email
	user.password = password
	new_hashed_password = User.new(:password => user.password).encrypted_password
	user.encrypted_password = new_hashed_password
	user.save!
end

names.each_with_index do |name, index|
	Profile.create(user_id: index + 1, name: name)
end

books = [
  ["How Google Works", "Eric Schmidt, Jonathan Rosenberg", "http://www.amazon.com/gp/product/B00HUU13Y0/ref=dp-kindle-redirect?ie=UTF8&btkr=1", 1]
]

books.each do |title, author, url, user_id|
  Book.create(title: title, author: author, url: url, user_id: user_id)
end
