users = [
  ['user@test.com', 'password']
]

names = ['Jon Bergman']

users.each do |email, password|
  user = User.new
  user.email = email
  user.password = password
  new_hashed_password = User.new(password: user.password).encrypted_password
  user.encrypted_password = new_hashed_password
  user.save!
end

names.each_with_index do |name, index|
  Profile.create(user_id: index + 1, name: name)
end

books = [
  ['How Google Works',
   'Eric Schmidt, Jonathan Rosenberg', 'http://www.amazon.com', 1]
]

books.each do |title, author, url, user_id|
  Book.create(title: title, author: author, url: url, user_id: user_id)
end
